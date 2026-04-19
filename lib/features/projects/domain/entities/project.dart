import 'package:equatable/equatable.dart';
class Project extends Equatable {
  final String id;
  final String name;
  final String description;
  final DateTime startDate;
  final DateTime? endDate;
  final String status;          // ✅ non-null
  final List<String> members;   // ✅ non-null
  final int progress;

  const Project({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    this.endDate,
    this.status = 'Active',
    this.members = const [],
    this.progress = 0,
  });

  @override
  List<Object> get props => [
        id,
        name,
        description,
        startDate,
        endDate ?? DateTime(0), // Use a default value for comparison
        status,
        members,
        progress,
      ];
}