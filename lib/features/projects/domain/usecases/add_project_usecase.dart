import 'package:dartz/dartz.dart';
import '../entities/project.dart';
import '../repositories/project_repository.dart';
import '../../../../core/errors/failures.dart';

class AddProjectUseCase {
  final ProjectRepository repository;

  AddProjectUseCase(this.repository);

  // ✅ التصحيح: ننادي addProject مش getProjects
  Future<Either<Failure, void>> call(Project project) async {
    return await repository.addProject(project); 
  }
}