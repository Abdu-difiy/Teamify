import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_state.dart';
import '../../domain/entities/task_entity.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  final List<TaskEntity> _allTasks = [];
  List<TaskEntity> _displayedTasks = [];

  List<TaskEntity> get tasksList => _displayedTasks;

  // 1. حساب نسبة الإنجاز - تم التعديل ليحسب من اللستة المعروضة حالياً لضمان السرعة
  double calculateProjectProgress(String projectId) {
    // الأفضل نحسب من الـ _allTasks لأنها دايماً المصدر الشامل للمشروع
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
        // تأكد أن الـ ID يتم أخذه من الـ doc.id لو مش متخزن جوه الـ data
        var data = doc.data();
        _allTasks.add(TaskEntity.fromMap(data ..['id'] = doc.id));
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
      // هنا مش بنعمل Loading عشان الـ Stream هيحدث الـ UI لوحده
      await FirebaseFirestore.instance
          .collection('tasks')
          .doc(task.id)
          .set(task.toMap());
      
      emit(TaskSuccess("Task added successfully!"));
    } catch (e) {
      emit(TaskError("Failed to add: ${e.toString()}"));
    }
  }

  // 5. تغيير حالة التاسك (تم تعديله ليحدث الـ Progress لحظياً)
  Future<void> toggleTaskCompletion(TaskEntity task) async {
    try {
      final newStatus = !task.isCompleted;
      
      // التحديث في Firebase
      await FirebaseFirestore.instance
          .collection('tasks')
          .doc(task.id)
          .update({'isCompleted': newStatus});

      // 🔥 التريكه هنا: لازم نحدث الـ _allTasks كمان لأن الـ Progress بيعتمد عليها
      _updateLocalTaskStatus(task.id, newStatus);
      
      // إرسال الحالة الجديدة للـ UI
      emit(TaskLoaded(List.from(_displayedTasks)));

    } catch (e) {
      emit(TaskError("Update failed: ${e.toString()}"));
    }
  }

  // ميثود مساعدة لتحديث اللستات محلياً فوراً
  void _updateLocalTaskStatus(String taskId, bool isCompleted) {
    // تحديث في اللستة الكبيرة
    int allIndex = _allTasks.indexWhere((t) => t.id == taskId);
    if (allIndex != -1) {
      _allTasks[allIndex] = _allTasks[allIndex].copyWith(isCompleted: isCompleted);
    }

    // تحديث في اللستة المعروضة
    int displayIndex = _displayedTasks.indexWhere((t) => t.id == taskId);
    if (displayIndex != -1) {
      _displayedTasks[displayIndex] = _displayedTasks[displayIndex].copyWith(isCompleted: isCompleted);
    }
  }

  // 6. حذف تاسك
  Future<void> deleteTask(String taskId) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).delete();
      // الـ Stream هيتولى مسحه من اللستات أوتوماتيك
    } catch (e) {
      emit(TaskError("Delete failed: ${e.toString()}"));
    }
  }
}