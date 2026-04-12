import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/project.dart'; // اسم الكلاس اللي لقيته (Project)
import '../repositories/project_repository.dart';

class GetProjectsUseCase {
  final ProjectRepository repository;

  GetProjectsUseCase(this.repository);

  Future<Either<Failure, List<Project>>> call() async {
    return await repository.getProjects();
  }
}