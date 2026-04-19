import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/task_cubit.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // استخدام watch عشان الشاشة تتحدث أول ما أي تاسك تتغير
    final cubit = context.watch<TaskCubit>();

    final total = cubit.tasksList.length;
    final completed = cubit.completedTasks.length;
    final lateTasksCount = cubit.lateTasks.length;

    // حل مشكلة الـ num و الـ double عن طريق .toDouble()
    final double completionRate = total == 0 ? 0.0 : (completed / total).toDouble();
    final double delayRate = total == 0 ? 0.0 : (lateTasksCount / total).toDouble();

    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        title: const Text(
          "Smart Insights",
          style: TextStyle(color: Color(0xFF0D3B66), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF0D3B66)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // كارت صحة المشروع (Health Score)
          _buildHealthCard(completionRate, delayRate),

          const SizedBox(height: 25),
          const Text(
            "Detailed Analysis",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0D3B66)),
          ),
          const SizedBox(height: 15),

          // 1. تحليل المخاطر (تاسك 1)
          _buildInsight(
            icon: Icons.warning_amber_rounded,
            color: Colors.red,
            title: "Risk Analysis",
            text: _riskInsight(delayRate),
          ),

          // 2. الإنتاجية (تاسك 3)
          _buildInsight(
            icon: Icons.trending_up,
            color: Colors.green,
            title: "Productivity Trend",
            text: _productivityInsight(completionRate),
          ),

          // 3. ضغط العمل (تاسك 4)
          _buildInsight(
            icon: Icons.groups,
            color: Colors.orange,
            title: "Team Workload",
            text: _workloadInsight(cubit),
          ),

          // 4. الاقتراحات الذكية (AI Suggestions)
          _buildInsight(
            icon: Icons.lightbulb_outline,
            color: Colors.blue,
            title: "Smart Suggestions",
            text: _suggestionInsight(delayRate, completionRate),
          ),
        ],
      ),
    );
  }

  // ==========================================
  // 🧠 ميثود حساب وتصميم سكور صحة المشروع
  // ==========================================
  Widget _buildHealthCard(double completion, double delay) {
    // معادلة بسيطة لحساب الصحة: (نسبة الإنجاز - نصف نسبة التأخير)
    double score = (completion * 100.0) - (delay * 50.0);
    if (score < 0) score = 0; // لضمان عدم وجود سكور بالسالب

    String status;
    Color color;

    if (score > 75) {
      status = "Excellent Performance 🔥";
      color = Colors.green;
    } else if (score > 45) {
      status = "On Track 👍";
      color = Colors.orange;
    } else {
      status = "Project At Risk ⚠️";
      color = Colors.red;
    }

    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.2), color.withOpacity(0.05)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          const Text(
            "Overall Project Health",
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 12),
          Text(
            "${score.toStringAsFixed(1)}%",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  // ==========================================
  // 🧠 تصميم كارت التحليل (Insight Card)
  // ==========================================
  Widget _buildInsight({
    required IconData icon,
    required Color color,
    required String title,
    required String text,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF0D3B66),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // ==========================================
  // 🧠 محرك المنطق (Logic Engine) لتوليد النصوص
  // ==========================================

  String _riskInsight(double delayRate) {
    if (delayRate > 0.5) {
      return "High risk! More than half of your tasks are overdue.";
    } else if (delayRate > 0.2) {
      return "Attention needed. Some tasks are falling behind schedule.";
    } else {
      return "Looking good. Very low delay probability for this week.";
    }
  }

  String _productivityInsight(double completionRate) {
    if (completionRate > 0.8) {
      return "Elite level! The team is smashing through the backlog.";
    } else if (completionRate > 0.5) {
      return "Steady progress. Productivity is within expected limits.";
    } else {
      return "Momentum is slow. Check for bottlenecks in the workflow.";
    }
  }

  String _workloadInsight(TaskCubit cubit) {
    final total = cubit.tasksList.length;
    if (total > 15) {
      return "The team is heavily loaded. Avoid adding new tasks for now.";
    } else if (total > 7) {
      return "Capacity is balanced. Good time to maintain current pace.";
    } else {
      return "Low workload. Opportunity to start high-priority project tasks.";
    }
  }

  String _suggestionInsight(double delayRate, double completionRate) {
    if (delayRate > 0.4) {
      return "Focus 100% on 'Late' tasks before starting anything new.";
    } else if (completionRate < 0.3) {
      return "Break down large tasks into smaller, manageable sub-tasks.";
    } else {
      return "Optimize current flow by auditing 'In-Progress' task status.";
    }
  }
}