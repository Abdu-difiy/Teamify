import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/task_entity.dart';
import '../cubit/task_cubit.dart';

class TaskListTile extends StatelessWidget {
  final TaskEntity task;
  final bool isCompleted;
  final String taskName;
  final DateTime dueDate;
  final String delayPercent;
  final String tag;


  const TaskListTile({super.key, required this.task , required this.isCompleted, required this.taskName, required this.dueDate, required this.delayPercent, required this.tag});

  @override
  Widget build(BuildContext context) {
    // تنسيق التاريخ بأمان
    String deadlineText = "${task.date.day}/${task.date.month}/${task.date.year}";
    
    // حساب لون خلفية ونستبة التأخير بناءً على القيمة
    int delayPercentInt = int.tryParse(task.delayPercent.toString()) ?? 0; // تأكد من تحويل النص لعدد صحيح
    Color delayBgColor = delayPercentInt > 70 
        ? const Color(0xFFFFEBEE) // أحمر فاتح جداً للخطر
        : delayPercentInt > 40
            ? const Color(0xFFFFF8E1) // برتقالي فاتح جداً
            : const Color(0xFFF1F5F9); // رمادي فاتح للطبيعي

    Color delayTextColor = delayPercentInt > 70
        ? Colors.red.shade800
        : delayPercentInt > 40
            ? Colors.orange.shade900
            : const Color(0xFF345A81);

    return InkWell(
      // ✅ ربط الـ Toggle بالضغط على الكارد كله
      onTap: () {
        context.read<TaskCubit>().toggleTaskCompletion(task);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE1E8F0)), // حدود رفيقة زي الصورة
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row 1: العنوان والأيقونة (Inprogress vs Completed)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ✅ الأيقونة تتغير بناءً على حالة التاسك
                Icon(
                  task.isCompleted 
                      ? Icons.check_circle_outline // متشطب عليه
                      : Icons.error_outline_rounded, // زي الصورة (تحذير)
                  color: task.isCompleted ? Colors.green : const Color(0xFF0D3B66),
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    task.title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: task.isCompleted ? Colors.grey : const Color(0xFF0D3B66),
                      // ✅ النص يتشطب عليه لو خلص
                      decoration: task.isCompleted ? TextDecoration.lineThrough : null,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 10),
            
            // Row 2: الـ Deadlines والبادجات
            Padding(
              padding: const EdgeInsets.only(left: 32), // محاذاة النص مع العنوان
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Due $deadlineText",
                    style: const TextStyle(
                      color: Color(0xFF8A99AD),
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  // Row البادجات (Delay vs Project Tag)
                  Row(
                    children: [
                      // بادج التأخير (AI Insight) - ديناميك
                      _buildBadge(
                        "${task.delayPercent}% chance of delay",
                        delayBgColor,
                        delayTextColor,
                      ),
                      const SizedBox(width: 10),
                      // بادج المشروع (الاسم الحقيقي) - ثابت
                      _buildBadge(
                        task.projectName,
                        const Color(0xFFE1E8F0),
                        const Color(0xFF0D3B66),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ميثود مساعدة لرسم البادج بشكل مطابق للصورة
  Widget _buildBadge(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
      ),
    );
  }
}