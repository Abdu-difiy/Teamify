import 'package:equatable/equatable.dart';

class Project extends Equatable {
  final String id;
  final String name;
  final String description;
  final DateTime startDate;
  final DateTime? endDate;
  final String? status;
  final List<String>? members;
  final int progress;
  


  const Project({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    this.endDate,
    this.status,
    this.members,
    this.progress = 0,
    
  });

  @override
  List<Object?> get props => [id, name, description, startDate, endDate, status, members, progress];

}

