import 'package:dio/dio.dart';
import '../models/project_model.dart';

abstract class ProjectRemoteDataSource {
  Future<List<ProjectModel>> getProjects();
  Future<void> addProject(ProjectModel project);
}

class ProjectRemoteDataSourceImpl implements ProjectRemoteDataSource {
  final Dio dio;

  ProjectRemoteDataSourceImpl(this.dio);

  @override
  Future<List<ProjectModel>> getProjects() async {
    try {
      // بنحاول نجيب البيانات الحقيقية
      final response = await dio.get("/projects");
      final List data = response.data;

      return data
          .map((json) => ProjectModel.fromJson(json))
          .toList();
    } catch (e) {
      // ✅ التعديل الجوهري: بلاش بيانات وهمية عشان تعرف المشكلة فين
      // كدة لو السيرفر مش شغال هيطلع لك Error حقيقي تحله
      rethrow; 
    }
  }

  @override
  Future<void> addProject(ProjectModel project) async {
    try {
      final response = await dio.post(
        "/projects", 
        data: project.toJson(),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception("Failed to add project");
      }
    } catch (e) {
      rethrow;
    }
  }
}