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
    String? extraField,
  }) async {
    try {
      final userModel = await remoteDataSource.register(
        name: name,
        email: email,
        password: password,
        role: role,
        extraField: extraField,
      );

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
}
