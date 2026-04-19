import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_state.dart';
import '../../domain/entities/task_entity.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  final List<TaskEntity> _allTasks = [];
  List<TaskEntity> _displayedTasks = [];

  List<TaskEntity> get tasksList => _displayedTasks;

  // 1. حساب نسبة الإنجاز
  double calculateProjectProgress(String projectId) {
    final projectTasks = _allTasks.where((t) => t.projectId == projectId).toList();
    if (projectTasks.isEmpty) return 0.0;
    final completedCount = projectTasks.where((t) => t.isCompleted).length;
    return completedCount / projectTasks.length;
  }

  // 2. جلب البيانات Real-time
  void getHomeTasks() {
    emit(TaskLoading());
    FirebaseFirestore.instance
        .collection('tasks')
        .orderBy('date', descending: true)
        .snapshots()
        .listen((snapshot) {
      _allTasks.clear();
      for (var doc in snapshot.docs) {
        var data = doc.data();
        _allTasks.add(TaskEntity.fromMap(data..['id'] = doc.id));
      }
      _displayedTasks = List.from(_allTasks);
      if (!isClosed) {
        emit(TaskLoaded(List.from(_displayedTasks)));
      }
    }, onError: (error) {
      emit(TaskError("Stream Error: ${error.toString()}"));
    });
  }

  // 3. فلترة التاسكات
  void filterTasks(String status) {
    if (status == "All Status" || status == "All") {
      _displayedTasks = List.from(_allTasks);
    } else {
      bool lookForCompleted = (status == "Completed");
      _displayedTasks = _allTasks.where((t) => t.isCompleted == lookForCompleted).toList();
    }
    emit(TaskLoaded(List.from(_displayedTasks)));
  }

  // 4. إضافة تاسك
  Future<void> addTask(TaskEntity task) async {
    try {
      await FirebaseFirestore.instance
          .collection('tasks')
          .doc(task.id)
          .set(task.toMap());
      emit(TaskSuccess("Task added successfully!"));
    } catch (e) {
      emit(TaskError("Failed to add: ${e.toString()}"));
    }
  }

  // 5. تغيير حالة التاسك
  Future<void> toggleTaskCompletion(TaskEntity task) async {
    try {
      final newStatus = !task.isCompleted;
      await FirebaseFirestore.instance
          .collection('tasks')
          .doc(task.id)
          .update({'isCompleted': newStatus});

      _updateLocalTaskStatus(task.id, newStatus);
      emit(TaskLoaded(List.from(_displayedTasks)));
    } catch (e) {
      emit(TaskError("Update failed: ${e.toString()}"));
    }
  }

  void _updateLocalTaskStatus(String taskId, bool isCompleted) {
    int allIndex = _allTasks.indexWhere((t) => t.id == taskId);
    if (allIndex != -1) {
      _allTasks[allIndex] = _allTasks[allIndex].copyWith(isCompleted: isCompleted);
    }
    int displayIndex = _displayedTasks.indexWhere((t) => t.id == taskId);
    if (displayIndex != -1) {
      _displayedTasks[displayIndex] = _displayedTasks[displayIndex].copyWith(isCompleted: isCompleted);
    }
  }

  // 6. حذف تاسك
  Future<void> deleteTask(String taskId) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).delete();
    } catch (e) {
      emit(TaskError("Delete failed: ${e.toString()}"));
    }
  }

  // =======================
  // 🔴 DELAY ANALYTICS CORE
  // =======================

  List<TaskEntity> get lateTasks {
    return _allTasks.where((t) =>
        !t.isCompleted &&
        DateTime.now().isAfter(t.date)
    ).toList();
  }

  List<TaskEntity> get upcomingTasks {
    return _allTasks.where((t) =>
        !t.isCompleted &&
        DateTime.now().isBefore(t.date)
    ).toList();
  }

  List<TaskEntity> get completedTasks {
    return _allTasks.where((t) => t.isCompleted).toList();
  }

  // =======================
  // ➕ NEW ANALYTICS METHODS
  // =======================

  // 1. بيانات توزيع المهام (Workload)
  Map<String, double> getWorkloadData() {
    Map<String, double> data = {};
    for (var task in _allTasks) {
      String project = task.projectName.isEmpty ? "Other" : task.projectName;
      data[project] = (data[project] ?? 0) + 1;
    }
    return data;
  }

  // 2. بيانات الإنتاجية
  List<double> getProductivityData() {
    // ترجيع بيانات للعرض في الـ Graph
    return [2.0, 5.0, 3.0, 7.0, 4.0]; 
  }
} // <-- تأكد إن القوس ده هو آخر حاجة في الملف