import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  });
  
  Future<Either<Failure, User>> socialLogin(String token, String provider);

  Future<Either<Failure, User>> register({
    required String name,
    required String email,
    required String password,
    required String role,
    Map<String, dynamic>? extraData, // التعديل هنا
  });

  Future<void> logout();

Future<Either<Failure, void>> sendOtp(String email);
Future<Either<Failure, void>> verifyOtp(String otp);
Future<Either<Failure, void>> resetPassword(String newPassword);


}









