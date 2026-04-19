import '../../domain/entities/project.dart';

// ✅ لازم يورث من الـ Entity عشان الـ UI يفهمه
class ProjectModel extends Project {
  const ProjectModel({
    required super.id,
    required super.name,
    required super.description,
    required super.startDate,
    super.endDate,
    super.status,
    super.members,
    super.progress,
  });

  // ✅ دي الميثود اللي الـ RemoteDataSource بيدور عليها
  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      // لو الـ API بيبعت id استخدمه، لو لأ استخدم String فاضي مؤقتاً
      id: json['id']?.toString() ?? DateTime.now().millisecondsSinceEpoch.toString(), 
      name: json['name'] ?? 'No Name',
      description: json['description'] ?? '',
      startDate: json['startDate'] != null 
          ? DateTime.parse(json['startDate']) 
          : DateTime.now(),
      endDate: json['endDate'] != null 
          ? DateTime.parse(json['endDate']) 
          : null,
      status: json['status'] ?? 'Active',
      members: List<String>.from(json['members'] ?? []),
      progress: (json['progress'] as num?)?.toInt() ?? 0,
    );
    
  }
  Map<String, dynamic> toJson() {
  return {
    "name": name,
    "description": description,
    "startDate": startDate.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "status": status,
    "members": members,
    "progress": progress,
  };
}
}