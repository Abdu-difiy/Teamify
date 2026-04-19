import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/tasks/presentation/cubit/task_cubit.dart';

class AIAssistantScreen extends StatelessWidget {
  const AIAssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<TaskCubit>();

    final total = cubit.tasksList.length;
    final late = cubit.lateTasks.length;

    String message;

    if (total == 0) {
      message = "No data yet. Start adding tasks 🚀";
    } else if (late / total > 0.5) {
      message = "⚠️ High delay detected. Rebalance workload.";
    } else {
      message = "✅ System is healthy";
    }

    return Scaffold(
      appBar: AppBar(title: const Text("AI Assistant")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}