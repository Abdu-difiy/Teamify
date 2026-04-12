import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Core
import 'package:teamify/core/network/api_client.dart';
import 'package:teamify/core/storage/token_storage.dart';
import 'package:teamify/features/projects/presentation/cubit/activity_cubit.dart';
import 'package:teamify/features/tasks/presentation/cubit/task_cubit.dart';
import '../network/dio_client.dart';

// Auth Feature
import '../../features/auth/data/datasource/auth_remote_datasource.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/register_usecase.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/domain/usecases/check_auth_usecase.dart';
import '../../features/auth/domain/usecases/logout_usecase.dart';
import '../../features/auth/domain/usecases/AppleLoginUseCase.dart';
import '../../features/auth/domain/usecases/GitHubLoginUseCase.dart';
import '../../features/auth/domain/usecases/GoogleLoginUseCase.dart';
import '../../features/auth/domain/usecases/LinkedinLoginUseCase.dart';
import '../../features/auth/presentation/cubit/login_cubit.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';
import '../../features/auth/presentation/cubit/auth_guard_cubit.dart';

// Projects Feature
import 'package:teamify/features/projects/data/datasources/project_remote_data_source.dart';
import 'package:teamify/features/projects/data/repositories/project_repository_impl.dart';
import 'package:teamify/features/projects/domain/repositories/project_repository.dart';
import 'package:teamify/features/projects/domain/usecases/get_projects_usecase.dart';
import 'package:teamify/features/projects/presentation/cubit/projects_cubit.dart';

// Forgot Password UseCases
import '../../features/auth/domain/usecases/send_otp_usecase.dart';
import '../../features/auth/domain/usecases/verify_otp_usecase.dart';
import '../../features/auth/domain/usecases/reset_password_usecase.dart';

// Forgot Password Cubit
import '../../features/auth/presentation/cubit/forgot_password_cubit.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_cubit.dart';
final sl = GetIt.instance;

Future<void> init() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  /// ------------------ Core ------------------
  if (!sl.isRegistered<SharedPreferences>()) {
    sl.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  }

  if (!sl.isRegistered<DioClient>()) {
    sl.registerLazySingleton<DioClient>(() => DioClient());
    sl.registerLazySingleton<Dio>(() => sl<DioClient>().dio);
  }

  if (!sl.isRegistered<FlutterSecureStorage>()) {
    sl.registerLazySingleton(() => const FlutterSecureStorage());
  }

  if (!sl.isRegistered<TokenStorage>()) {
    sl.registerLazySingleton<TokenStorage>(
      () => TokenStorage(sl<FlutterSecureStorage>(), sl<SharedPreferences>()),
    );
  }

  if (!sl.isRegistered<ApiClient>()) {
    sl.registerLazySingleton<ApiClient>(() => ApiClient(sl<TokenStorage>()));
  }

  /// ------------------ Auth Feature ------------------
  // Data Source
  if (!sl.isRegistered<AuthRemoteDataSource>()) {
    sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(sl<ApiClient>()),
    );
  }

  // Repository
  if (!sl.isRegistered<AuthRepository>()) {
    sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(sl<AuthRemoteDataSource>(), sl<TokenStorage>()),
    );
  }

  // UseCases
  if (!sl.isRegistered<RegisterUseCase>()) {
    sl.registerLazySingleton(() => RegisterUseCase(sl<AuthRepository>()));
    sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepository>()));
    sl.registerLazySingleton(() => CheckAuthUseCase(sl<TokenStorage>()));
    sl.registerLazySingleton(() => LogoutUseCase(sl<AuthRepository>()));
    sl.registerLazySingleton(() => GoogleLoginUseCase(sl<AuthRepository>()));
    sl.registerLazySingleton(() => AppleLoginUseCase(sl<AuthRepository>()));
    sl.registerLazySingleton(
      () => GitHubLoginUseCase(
        sl<AuthRepository>(),
        clientId: 'Ov23lia4pNPPSe1NT3HP',
        clientSecret: '81e71265d5349df99f1b3ba92f18725b174aec3f',
        redirectUri: 'teamify://callback',
      ),
    );
    sl.registerLazySingleton(
      () => LinkedInLoginUseCase(
        repository: sl<AuthRepository>(),
        clientId: '77muu1v8zvjdhq',
        clientSecret: 'WPL_AP1.NlF9lL1aeLV0YV3Q.IzVgFQ==',
        redirectUri: 'https://github.com/Abdu-difiy',
      ),
    );
  }

  // Auth Cubits
  if (!sl.isRegistered<AuthCubit>()) {
    sl.registerFactory(() => AuthCubit(sl<RegisterUseCase>(), sl<TokenStorage>()));
    sl.registerFactory(() => AuthGuardCubit(sl<CheckAuthUseCase>(), sl<LogoutUseCase>()));
    sl.registerFactory(
      () => LoginCubit(
        sl<LoginUseCase>(),
        sl<TokenStorage>(),
        sl<GoogleLoginUseCase>(),
        sl<GitHubLoginUseCase>(),
        sl<LinkedInLoginUseCase>(),
        sl<AppleLoginUseCase>(),
      ),
    );    
  }

  if (!sl.isRegistered<SendOtpUseCase>()) {
  sl.registerLazySingleton(() => SendOtpUseCase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => VerifyOtpUseCase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => ResetPasswordUseCase(sl<AuthRepository>()));
}


if (!sl.isRegistered<ForgotPasswordCubit>()) {
  sl.registerFactory(
    () => ForgotPasswordCubit(
      sendOtpUseCase: sl(),
      verifyOtpUseCase: sl(),
      resetPasswordUseCase: sl(),
    ),
  );
}

  /// ------------------ Projects Feature ------------------
  // Data Source
  if (!sl.isRegistered<ProjectRemoteDataSource>()) {
    sl.registerLazySingleton<ProjectRemoteDataSource>(
      () => ProjectRemoteDataSourceImpl(sl<Dio>()),
    );
  }

  // Repository
  if (!sl.isRegistered<ProjectRepository>()) {
    sl.registerLazySingleton<ProjectRepository>(
      () => ProjectRepositoryImpl(sl<ProjectRemoteDataSource>()),
    );
  }

  // UseCase
  if (!sl.isRegistered<GetProjectsUseCase>()) {
    sl.registerLazySingleton(() => GetProjectsUseCase(sl<ProjectRepository>()));
  }

  // ✅ تسجيل الـ Cubits المتبقية بأمان
  if (!sl.isRegistered<ProjectsCubit>()) {
    sl.registerLazySingleton(() => ProjectsCubit(sl()));
  }

  if (!sl.isRegistered<ActivityCubit>()) {
    sl.registerLazySingleton(() => ActivityCubit());
  }

  if (!sl.isRegistered<TaskCubit>()) {
    sl.registerFactory(() => TaskCubit());
  }
}