import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:teamify/features/tasks/presentation/cubit/task_cubit.dart';
import '../cubit/task_cubit.dart';

class DelayScreen extends StatelessWidget {
  const DelayScreen({super.key});

  // =======================
  // 📊 REAL CALCULATIONS
  // =======================

  double _getDelayPercent(TaskCubit cubit) {
    final total = cubit.tasksList.length;
    if (total == 0) return 0;

    final late = cubit.lateTasks.length;
    return (late / total) * 100;
  }

  Map<String, int> _getWorkload(TaskCubit cubit) {
    Map<String, int> map = {};

    for (var task in cubit.tasksList) {
      final key = task.projectName;
      map[key] = (map[key] ?? 0) + 1;
    }

    return map;
  }

  String _getInsight(TaskCubit cubit, double delayPercent) {
    final total = cubit.tasksList.length;
    final late = cubit.lateTasks.length;

    if (total == 0) return "No tasks available yet.";

    if (delayPercent > 70) {
      return "⚠️ High delay rate — consider redistributing workload.";
    } else if (delayPercent > 50) {
      return "📊 Moderate delays detected — monitor progress closely.";
    } else {
      return "✅ Project is running smoothly.";
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<TaskCubit>();

    final delayPercent = _getDelayPercent(cubit);
    final workload = _getWorkload(cubit);
    final insight = _getInsight(cubit, delayPercent);

    Color getColor() {
      if (delayPercent > 70) return Colors.red;
      if (delayPercent > 50) return Colors.orange;
      return Colors.green;
    }

    final color = getColor();

    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        title: const Text(
          "Delay Prediction",
          style: TextStyle(color: Color(0xFF0D3B66)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF0D3B66)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // =====================
            // 🔴 DELAY CARD
            // =====================
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "Project Delay Risk",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "${delayPercent.toStringAsFixed(1)}%",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    delayPercent > 70
                        ? "High Risk ⚠️"
                        : delayPercent > 50
                        ? "Medium Risk"
                        : "Low Risk",
                    style: TextStyle(color: color),
                  ),
                ],
              ),
            ),

            // ... تحت الـ Delay Card اللي أنت عملتها ...
            const SizedBox(height: 25),

            // 📊 Productivity Graph (تاسك 3)
            const Text(
              "Productivity Trend",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF0D3B66),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 180,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: cubit
                          .getProductivityData()
                          .asMap()
                          .entries
                          .map((e) => FlSpot(e.key.toDouble(), e.value))
                          .toList(),
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 3,
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.blue.withOpacity(0.1),
                      ),
                    ),
                  ],
                  titlesData: FlTitlesData(
                    show: false,
                  ), // لإخفاء الأرقام الجانبية وتسهيل التصميم
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // 👥 Workload Distribution (تاسك 4) مع الرسم البياني
            const Text(
              "Workload Distribution",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF0D3B66),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 150,
              child: PieChart(
                PieChartData(
                  sections: workload.entries.map((entry) {
                    return PieChartSectionData(
                      value: entry.value.toDouble(),
                      title: "${entry.value}",
                      color: Colors.blueAccent.withOpacity(0.6),
                      radius: 40,
                    );
                  }).toList(),
                ),
              ),
            ),

            // ... كمل بعدها بالـ List اللي أنت كنت كاتبها ...
            const SizedBox(height: 25),

            // =====================
            // 👥 WORKLOAD
            // =====================
            const Text(
              "Workload Distribution",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF0D3B66),
              ),
            ),
            const SizedBox(height: 15),

            Column(
              children: workload.entries.map((entry) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(entry.key.isNotEmpty ? entry.key[0] : "?"),
                      ),
                      const SizedBox(width: 10),
                      Expanded(child: Text(entry.key)),
                      Text("${entry.value} tasks"),
                    ],
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 25),

            // =====================
            // 💡 INSIGHTS
            // =====================
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFEAF3FB),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Icon(Icons.lightbulb_outline, color: Color(0xFF4384B6)),
                  const SizedBox(width: 10),
                  Expanded(child: Text(insight)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
