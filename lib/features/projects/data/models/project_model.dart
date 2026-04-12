import '../../domain/entities/project.dart';

class ProjectModel extends Project {
  const ProjectModel({
    required super.id,
    required super.name,
    required super.description,
    required super.startDate,
    super.endDate,
    required super.status,
    super.progress,
    super.members,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'].toString(),
      name: json['name']??'',
      description: json['description']??'',
      startDate: DateTime.parse(json['startDate']),
      endDate: json['endDate'] != null ? DateTime.parse(json['endDate']) : null,
      status: json['status']??'Active',
      progress: json['progress'] ?? 0,
      members: List<String>.from(json['members'] ?? []),
    );
  }
}