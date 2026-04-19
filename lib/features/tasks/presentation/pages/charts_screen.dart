import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import '../cubit/task_cubit.dart';

class ChartsScreen extends StatelessWidget {
  const ChartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<TaskCubit>();

    final total = cubit.tasksList.length;
    final completed = cubit.completedTasks.length;
    final late = cubit.lateTasks.length;
    final upcoming = cubit.upcomingTasks.length;

    return Scaffold(
      backgroundColor: const Color(0xFFFBFDFF),
      appBar: AppBar(
        title: const Text(
          "Analytics Dashboard",
          style: TextStyle(color: Color(0xFF0D3B66)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF0D3B66)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // =========================
            // 🥧 PIE CHART - STATUS
            // =========================
            _buildSectionTitle("Task Distribution"),
            const SizedBox(height: 15),

            SizedBox(
              height: 220,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: completed.toDouble(),
                      title: "Done",
                      color: Colors.green,
                      radius: 60,
                    ),
                    PieChartSectionData(
                      value: late.toDouble(),
                      title: "Late",
                      color: Colors.red,
                      radius: 60,
                    ),
                    PieChartSectionData(
                      value: upcoming.toDouble(),
                      title: "Upcoming",
                      color: Colors.orange,
                      radius: 60,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // =========================
            // 📊 BAR CHART - WORKLOAD
            // =========================
            _buildSectionTitle("Workload Overview"),
            const SizedBox(height: 15),

            SizedBox(
              height: 250,
              child: BarChart(
                BarChartData(
                  barGroups: _buildBarGroups(cubit),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // =========================
            // 📈 LINE CHART - TREND
            // =========================
            _buildSectionTitle("Productivity Trend"),
            const SizedBox(height: 15),

            SizedBox(
              height: 250,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: _buildTrendData(cubit),
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 3,
                      dotData: FlDotData(show: false),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =========================
  // 📊 BAR DATA
  // =========================
  List<BarChartGroupData> _buildBarGroups(TaskCubit cubit) {
    Map<String, int> map = {};

    for (var t in cubit.tasksList) {
      final key = t.projectName ?? "Unknown";
      map[key] = (map[key] ?? 0) + 1;
    }

    int index = 0;

    return map.entries.map((e) {
      final bar = BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: e.value.toDouble(),
            color: Colors.blue,
          )
        ],
      );
      index++;
      return bar;
    }).toList();
  }

  // =========================
  // 📈 TREND DATA (MOCK + REAL READY)
  // =========================
  List<FlSpot> _buildTrendData(TaskCubit cubit) {
    final total = cubit.tasksList.length;
    if (total == 0) return [];

    final completed = cubit.completedTasks.length;

    return [
      FlSpot(0, total.toDouble()),
      FlSpot(1, (total - completed).toDouble()),
      FlSpot(2, completed.toDouble()),
    ];
  }

  Widget _buildSectionTitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0D3B66),
        ),
      ),
    );
  }
}