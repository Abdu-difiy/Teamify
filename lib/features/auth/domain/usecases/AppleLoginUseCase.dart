import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';
import '../entities/user.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleLoginUseCase {
  final AuthRepository repository;
  AppleLoginUseCase(this.repository);

  Future<Either<Failure, User>> call() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final token = credential.identityToken ?? "";
      if(token.isEmpty) throw Exception("Apple sign in canceled");

      return await repository.socialLogin(token, "apple");
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}