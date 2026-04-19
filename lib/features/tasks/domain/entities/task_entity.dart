class TaskEntity {
  final String id;
  final String title;
  final DateTime date;
  final bool isCompleted;
  final int delayPercent;
  final String tag;
  final int delayProbability;
  final String projectId; 
  final String projectName;
  final String? assignedUser;
final String? priority;

  TaskEntity({
    required this.id,
    required this.title, 
    required this.date, 
    this.isCompleted = false,
    required this.delayPercent, 
    required this.tag,
    this.delayProbability = 0,
    required this.projectId,
    required this.projectName,
    this.assignedUser,
    this.priority,
  });

  // 🔥 ميثود الـ copyWith ضرورية جداً للتحديث الاحترافي
  TaskEntity copyWith({bool? isCompleted, String? title, String? delayPercent , String? assignedUser, String? priority}) {
    return TaskEntity(
      id: id,
      title: title ?? this.title,
      date: date,
      isCompleted: isCompleted ?? this.isCompleted,
      delayPercent: delayPercent != null ? int.parse(delayPercent) : this.delayPercent,
      tag: tag,
      projectId: projectId,
      projectName: projectName,
      assignedUser: assignedUser,
      priority: priority,
      
    );
  }

  factory TaskEntity.fromMap(Map<String, dynamic> map) {
   return TaskEntity(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      date: map['date'] != null ? DateTime.parse(map['date']) : DateTime.now(),
      tag: map['tag'] ?? '',
      projectId: map['projectId'] ?? '',
      projectName: map['projectName'] ?? '',
      isCompleted: map['isCompleted'] ?? false,
      // معالجة ذكية للـ delayPercent سواء كانت String أو int
      delayPercent: (map['delayPercent'] ?? 0) is String 
          ? int.parse(map['delayPercent']) 
          : (map['delayPercent'] ?? 0),
      delayProbability: map['delayProbability'] ?? 0,
      assignedUser: map['assignedUser'],
      priority: map['priority'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'date': date.toIso8601String(),
      'tag': tag,
      'projectId': projectId,
      'projectName': projectName,
      'isCompleted': isCompleted,
      'delayPercent': delayPercent,
      'delayProbability': delayProbability,
      'assignedUser': assignedUser,
      'priority': priority,
    };
  }
}