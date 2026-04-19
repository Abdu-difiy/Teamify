import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:teamify/features/projects/data/models/project_model.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/project.dart';
import '../../domain/repositories/project_repository.dart';
import '../datasources/project_remote_data_source.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final ProjectRemoteDataSource remoteDataSource;

  ProjectRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Project>>> getProjects() async {
    try {
      final projects = await remoteDataSource.getProjects();
      // بنحول من Model لـ Entity عشان الـ Domain Layer
      return Right(projects
          .map((model) => Project(
                id: model.id,
                name: model.name,
                description: model.description,
                startDate: model.startDate,
                endDate: model.endDate,
                status: model.status,
                members: model.members,
                progress: model.progress,
              ))
          .toList());
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? "Server Error"));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error"));
    }
  }

  @override
  Future<Either<Failure, void>> addProject(Project project) async {
    try {
      // بنحول الـ Entity لـ Model عشان نبعته للـ Data Source
      final projectModel = ProjectModel(
        id: project.id,
        name: project.name,
        description: project.description,
        startDate: project.startDate,
        endDate: project.endDate,
        status: project.status,
        members: project.members,
        progress: project.progress,
      );

      await remoteDataSource.addProject(projectModel);
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? "Server Error while adding project"));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
} // ✅ كدة القفلة صح وكل الميثودز جوه الكلاس