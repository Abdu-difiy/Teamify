import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../tasks/presentation/cubit/task_cubit.dart';

class ProductivityChart extends StatelessWidget {
  final TaskCubit cubit;

  const ProductivityChart({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final total = cubit.tasksList.length;
    final done = cubit.completedTasks.length;
    final pending = total - done;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Productivity Overview",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0D3B66),
            ),
          ),
          const SizedBox(height: 20),

          SizedBox(
            height: 200,
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: done.toDouble(),
                    color: Colors.green,
                    title: "Done",
                    radius: 60,
                  ),
                  PieChartSectionData(
                    value: pending.toDouble(),
                    color: Colors.orange,
                    title: "Pending",
                    radius: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}