import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_projects_usecase.dart';
import '../../domain/entities/project.dart';
import 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  final GetProjectsUseCase getProjectsUseCase;

  ProjectsCubit(this.getProjectsUseCase) : super(ProjectsInitial());

  final List<Project> _projects = [];

  // 🔥 السطر ده هو اللي هيحل مشكلة الـ Getter في الـ HomeScreen
  List<Project> get projectsList => _projects; 

  Future<void> fetchProjects() async {
    if (_projects.isEmpty) {
      emit(ProjectsLoading());
    }

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

  Future<void> addProject({
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String status,
    required List<String> members,
  }) async {
    final newProject = Project(
      name: name,
      description: description,
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      startDate: startDate,
      endDate: endDate,
      status: status,
      members: members,
      progress: 0,
    );

    _projects.insert(0, newProject);

    // نبعت الحالة الجديدة بالقائمة المحدثة
    emit(ProjectsLoaded(List.from(_projects)));

    // نبعت حالة النجاح عشان لو عايز تظهر SnackBar أو أي أكشن تاني
    emit(const ProjectsSuccess("Project Created Successfully"));
  }
}