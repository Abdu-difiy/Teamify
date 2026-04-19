import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/projects/presentation/screens/project_details_screen.dart';
import 'package:teamify/features/tasks/presentation/cubit/task_cubit.dart';
import 'package:teamify/features/projects/domain/entities/project.dart'; // ✅ تأكد من المسار صح

class ProjectCard extends StatelessWidget {
  final Project project; // ✅ غيرناها من dynamic لـ Project

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    // 1. حساب البروجرس من الكيوبت (تاسك 2)
    final double progressVal = context.read<TaskCubit>().calculateProjectProgress(project.id);
    final int progressPercent = (progressVal * 100).toInt();

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProjectDetailsScreen(project: project),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF4384B6).withOpacity(0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  project.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF0D3B66),
                  ),
                ),
                Text(
                  "$progressPercent% progress", // ✅ بنستخدم النسبة المحسوبة ديناميكياً
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // ✅ بدلنا .client بـ .description لأنها اللي موجودة في الـ Entity
            Text(
              project.description, 
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 12),

            // Progress Bar (تاسك 2)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progressVal, // ✅ القيمة المحسوبة
                backgroundColor: Colors.grey.shade200,
                color: const Color(0xFF4384B6),
                minHeight: 8,
              ),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 14, color: Color(0xFF0D3B66)),
                    const SizedBox(width: 6),
                    Text(
                      // ✅ بدلنا .date بـ تحويل الـ startDate لنص
                      "${project.startDate.day}/${project.startDate.month}/${project.startDate.year}",
                      style: const TextStyle(fontSize: 12, color: Color(0xFF0D3B66)),
                    ),
                  ],
                ),
                // ✅ هنثبت الـ Risk كـ Low Risk مؤقتاً أو نربطها بالـ Logic بتاعنا
                _buildRiskTag("Low Risk"), 
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRiskTag(String risk) {
    Color color = risk == "Low Risk" ? Colors.green : Colors.red;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        risk,
        style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.bold),
      ),
    );
  }
}