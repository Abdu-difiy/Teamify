import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';
import '../entities/user.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginUseCase {
  final AuthRepository repository;
  GoogleLoginUseCase(this.repository);

  Future<Either<Failure, User>> call() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      // تسجيل خروج (اختياري)
      await googleSignIn.signOut();

      // تسجيل الدخول
      final account = await googleSignIn.authenticate();

      if (account == null) {
        return Left(ServerFailure("Google login cancelled"));
      }

      final googleAuth = account.authentication;

      final String? token = googleAuth.idToken;

      if (token == null) {
        return Left(ServerFailure("Failed to get ID Token from Google"));
      }

      return await repository.socialLogin(token, "google");
    } catch (e) {
      return Left(ServerFailure("Error: ${e.toString()}"));
    }
  }
}