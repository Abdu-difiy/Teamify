import 'package:equatable/equatable.dart';
import '../../domain/entities/project.dart';

abstract class ProjectsState extends Equatable {
  const ProjectsState();

  @override
  List<Object?> get props => [];
}

class ProjectsInitial extends ProjectsState {}

class ProjectsLoading extends ProjectsState {}

class ProjectsLoaded extends ProjectsState {
  final List<Project> projects;

  const ProjectsLoaded(this.projects);

  @override
  List<Object?> get props => [projects];
}

/// 🔥 مهم جداً
class ProjectsSuccess extends ProjectsState {
  final String message;

  const ProjectsSuccess(this.message);

  @override
  List<Object?> get props => [message];
}

class ProjectsError extends ProjectsState {
  final String message;

  const ProjectsError(this.message);

  @override
  List<Object?> get props => [message];
}