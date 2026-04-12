import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/auth/domain/usecases/AppleLoginUseCase.dart';
import 'package:teamify/features/auth/domain/usecases/GitHubLoginUseCase.dart';
import 'package:teamify/features/auth/domain/usecases/GoogleLoginUseCase.dart';
import 'package:teamify/features/auth/domain/usecases/LinkedinLoginUseCase.dart';
import 'package:teamify/features/auth/domain/usecases/login_usecase.dart';
import '../../../../core/storage/token_storage.dart';
import 'auth_state.dart';
// import '../../../../features/auth/data/google_auth_service.dart';

class LoginCubit extends Cubit<AuthState> {
  final LoginUseCase loginUseCase;
  final TokenStorage tokenStorage;
  final GoogleLoginUseCase googleLoginUseCase;
  final GitHubLoginUseCase githubLoginUseCase;
  final LinkedInLoginUseCase linkedInLoginUseCase;
  final AppleLoginUseCase appleLoginUseCase;
  // final GoogleAuthService googleAuthService;

  LoginCubit(
    this.loginUseCase,
    this.tokenStorage,
    this.googleLoginUseCase,
    this.githubLoginUseCase,
    this.linkedInLoginUseCase,
    this.appleLoginUseCase,
    // this.googleAuthService,
  ) : super(AuthInitial());

  // دالة موحدة للتعامل مع نتيجة الـ UseCase لتقليل تكرار الكود
  Future<void> _handleAuthResult(dynamic result) async {
    await result.fold(
      (failure) async => emit(AuthError(failure.message)),
      (user) async {
        // تأكد من حفظ التوكن أولاً
        await tokenStorage.saveToken(user.token);
        // ثم أرسل حالة النجاح مع بيانات المستخدم
        await tokenStorage.saveUserRole(user.role);

        emit(AuthSuccess(user: user));
      },
    );
  }

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    try{
      final result = await loginUseCase(LoginParams(email: email, password: password));
      await _handleAuthResult(result);
    } catch (e) {
      emit(AuthError("An unexpected error occurred. Please try again."));
    }
  }

  Future<void> loginWithGoogle() async {
    emit(AuthLoading());
    final result = await googleLoginUseCase();
    await _handleAuthResult(result);
  }

  Future<void> loginWithGithub() async {
    emit(AuthLoading());
    final result = await githubLoginUseCase();
    await _handleAuthResult(result);
  }

  Future<void> loginWithLinkedIn() async {
    emit(AuthLoading());
    final result = await linkedInLoginUseCase();
    await _handleAuthResult(result);
  }

  Future<void> loginWithApple() async {
    emit(AuthLoading());
    final result = await appleLoginUseCase();
    await _handleAuthResult(result);
  }
}