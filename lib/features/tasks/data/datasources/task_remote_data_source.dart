import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teamify/features/tasks/domain/entities/task_entity.dart';

class TaskRemoteDataSource {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addTask(TaskEntity task) async {
    await firestore.collection('tasks').doc(task.id).set({
      'title': task.title,
      'date': task.date.toIso8601String(),
      'delayPercent': task.delayPercent,
      'tag': task.tag,
      'projectId': task.projectId,
      'isCompleted': task.isCompleted,
      'userId': 'USER_ID_HERE', // هنجيبه من الـ Auth لاحقاً
    });
  }

  Future<List<TaskEntity>> getTasks() async {
    final snapshot = await firestore.collection('tasks').get();
    // تحويل الـ snapshots لـ TaskEntity
    return snapshot.docs.map((doc) => TaskEntity.fromMap(doc.data())).toList();
  }
}