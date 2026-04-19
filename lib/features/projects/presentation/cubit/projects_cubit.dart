import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/projects/domain/usecases/add_project_usecase.dart';
import '../../domain/usecases/get_projects_usecase.dart';
import '../../domain/entities/project.dart';
import 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  final GetProjectsUseCase getProjectsUseCase;
  final AddProjectUseCase addProjectUseCase;

  ProjectsCubit({
    required this.getProjectsUseCase,
    required this.addProjectUseCase,
  }) : super(ProjectsInitial());

  final List<Project> _projects = [];
  List<Project> get projectsList => _projects;

  // 1. جلب المشاريع من السيرفر
  Future<void> fetchProjects() async {
    emit(ProjectsLoading());

    final result = await getProjectsUseCase();

    result.fold(
      (failure) => emit(ProjectsError(failure.message)),
      (projects) {
        _projects.clear();
        _projects.addAll(projects);
        emit(ProjectsLoaded(List.from(_projects)));
      },
    );
  }

  // 2. إضافة مشروع جديد
  Future<void> addProject({
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String status,
    required List<String> members,
  }) async {
    final newProject = Project(
      id: '', // السيرفر هو اللي هيدينا الـ ID
      name: name,
      description: description,
      startDate: startDate,
      endDate: endDate,
      status: status,
      members: members,
      progress: 0,
    );

    // نبعت للسيرفر
    final result = await addProjectUseCase(newProject);

    result.fold(
      (failure) => emit(ProjectsError(failure.message)),
      (_) async {
        // ✅ النجاح الحقيقي: روح هات البيانات الجديدة من السيرفر عشان تظهر في القائمة
        emit(const ProjectsSuccess("Project Created Successfully"));
        await fetchProjects(); 
      },
    );
  }
}