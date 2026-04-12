import '../../domain/entities/task_entity.dart';

class TaskModel extends TaskEntity {
  TaskModel({
    required String id,
    required String title,
    required DateTime date,
    bool isCompleted = false,
    required int delayPercent,
    required String tag,
    required String projectId,
    required String projectName,
  }) : super(
          id: id,
          title: title,
          date: date,
          isCompleted: isCompleted,
          delayPercent: delayPercent,
          tag: tag,
          projectId: projectId,
          projectName: projectName,
        );

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      date: DateTime.parse(json['due_date'] ?? DateTime.now().toIso8601String()),
      isCompleted: json['is_completed'] ?? false,
      delayPercent: json['delay_probability'] ?? '0%',
      tag: json['tag'] ?? '',
      projectId: json['project_id'] ?? '',
      projectName: json['project_name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'due_date': date.toIso8601String(),
      'is_completed': isCompleted,
      'delay_probability': delayPercent,
      'tag': tag,
    };
  }
}