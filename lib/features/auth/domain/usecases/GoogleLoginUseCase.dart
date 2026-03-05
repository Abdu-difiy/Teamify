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
      
      final googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
      final account = await googleSignIn.signIn();

      if (account == null) {
        return Left(ServerFailure("Google login cancelled"));
      }

      final token = (await account.authentication).accessToken ?? "";

      return await repository.socialLogin(token, "google");
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}