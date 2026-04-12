import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasource/auth_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/storage/token_storage.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final TokenStorage tokenStorage;

  AuthRepositoryImpl(this.remoteDataSource, this.tokenStorage);

  @override
Future<Either<Failure, User>> register({
  required String name,
  required String email,
  required String password,
  required String role,
  Map<String, dynamic>? extraData,
}) async {
  try {
    final userModel = await remoteDataSource.register(
      name: name,
      email: email,
      password: password,
      role: role,
      extraData: extraData,
    );

    // 🔥 مهم جدًا
    await tokenStorage.saveToken(userModel.token);
    await tokenStorage.saveUserRole(role);

    return Right(userModel);
  } on DioException catch (e) {
    return Left(ServerFailure(e.message ?? "Server Error"));
  } catch (e) {
    return Left(ServerFailure("Unexpected Error"));
  }
}

  @override
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final userModel = await remoteDataSource.login(
        email: email,
        password: password,
      );

      await tokenStorage.saveToken(userModel.token);

      return Right(userModel);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? "Server Error"));
    
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    
    } catch (e) {
      return Left(ServerFailure("Unexpected Error"));
    }
  }

  @override
  Future<Either<Failure, User>> socialLogin(String token, String provider) async {
    try {
      final userModel = await remoteDataSource.socialLogin(token, provider);
      await tokenStorage.saveToken(userModel.token);
      return Right(userModel);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? "Server Error"));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error"));
    }
  }

  @override
  Future<void> logout() async {
    await tokenStorage.clearToken();
  }
  @override
  Future<Either<Failure, void>> sendOtp(String email) async {
    try {
      await remoteDataSource.sendOtp(email);
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? "Failed to send OTP"));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error"));
    }
  }

  @override
  Future<Either<Failure, void>> verifyOtp(String otp) async {
    try {
      await remoteDataSource.verifyOtp(otp);
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? "Invalid OTP"));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error"));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword(String newPassword) async {
    try {
      await remoteDataSource.resetPassword(newPassword);
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? "Failed to reset password"));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error"));
    }
  }
}

