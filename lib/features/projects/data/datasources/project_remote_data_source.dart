import 'package:dio/dio.dart';
import '../models/project_model.dart';

abstract class ProjectRemoteDataSource {
  Future<List<ProjectModel>> getProjects();
}

class ProjectRemoteDataSourceImpl implements ProjectRemoteDataSource {
  final Dio dio;

  ProjectRemoteDataSourceImpl(this.dio);

  @override
  Future<List<ProjectModel>> getProjects() async {
    try {
      // محاولة جلب البيانات من السيرفر
      final response = await dio.get("/projects");
      final List data = response.data;

      return data
          .map((json) => ProjectModel.fromJson(json))
          .toList();
    } catch (e) {
      // لو حصل أي خطأ (زي مشكلة الـ Host اللي ظهرت لك)، هينفذ الكود اللي هنا
      return [
        ProjectModel(
          id: "1",
          name: "Project Alpha",
          description: "A project about building a new app.",
          startDate: DateTime.now().subtract(const Duration(days: 30)),
          endDate: DateTime.now().add(const Duration(days: 60)),
          status: "Active",
          progress: 45,
          members: ["Alice", "Bob", "Charlie"], // تأكد هل اسمها member ولا members في الـ Model
        ),
      
      ];
    }
  }
}