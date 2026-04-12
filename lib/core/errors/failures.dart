import 'package:equatable/equatable.dart';

// الكلاس الأساسي للأخطاء
abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

// الخطأ الخاص بالسيرفر (اللي بنستخدمه في الـ Repository)
class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

// خطأ في حالة عدم وجود إنترنت (ممكن تحتاجه مستقبلاً)
class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}