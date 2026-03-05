import 'package:dio/dio.dart';
import '../models/project_model.dart';

abstract class ProjectRemoteDataSource {
  Future<List<ProjectModel>> getProjects();
}

class ProjectRemoteDataSourceImpl
    implements ProjectRemoteDataSource {
  final Dio dio;

  ProjectRemoteDataSourceImpl(this.dio);

  @override
  Future<List<ProjectModel>> getProjects() async {
    final response = await dio.get("projects");

    final List data = response.data;

    return data
        .map((json) => ProjectModel.fromJson(json))
        .toList();
  }
}