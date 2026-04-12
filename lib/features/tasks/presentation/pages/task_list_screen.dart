import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/projects/domain/entities/project.dart';
import 'package:teamify/features/tasks/presentation/cubit/task_cubit.dart';
import 'package:teamify/features/tasks/presentation/cubit/task_state.dart';
import 'package:teamify/features/tasks/presentation/widgets/task_list_tile.dart';

class TasksListScreen extends StatelessWidget {
  final Project project;

  const TasksListScreen({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(project.name)),
      // في ملف TasksListScreen
body: BlocBuilder<TaskCubit, TaskState>(
  builder: (context, state) {
    // 1. استخدام tasksList من الكيوبيت مباشرة
    final allTasks = context.read<TaskCubit>().tasksList;

    // 2. فلترة تاسكات المشروع ده
    final projectTasks = allTasks.where((task) => task.projectId == project.id).toList();

    if (state is TaskLoading && projectTasks.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (projectTasks.isEmpty) {
      return const Center(child: Text("No tasks found for this project"));
    }

    return ListView.builder(
      itemCount: projectTasks.length,
      itemBuilder: (context, index) {
        final task = projectTasks[index];
        return InkWell(
          onTap: () {
            // 🔥 أهم سطر: تغيير حالة التاسك عند الضغط
            context.read<TaskCubit>().toggleTaskCompletion(task);
          },
          child: TaskListTile(
            taskName: task.title,
            dueDate: task.date,
            delayPercent: "${task.delayPercent}%", 
            tag: task.tag,
            // أضف خاصية في الـ TaskListTile عشان تغير الشكل لو خلص
            isCompleted: task.isCompleted,
            task: task, // تمرير الكيان كامل للـ TaskListTile
          ),
        );
      },
    );
  },
),
    );
  }
}