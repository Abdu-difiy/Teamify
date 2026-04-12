import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/auth/domain/usecases/register_usecase.dart';
import '../../../../core/storage/token_storage.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final RegisterUseCase registerUseCase;
  final TokenStorage tokenStorage;

  AuthCubit(this.registerUseCase, this.tokenStorage) : super(AuthInitial());

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String role,
    Map<String, dynamic>? extraData,
  }) async {
    if (isClosed) return;

    emit(AuthLoading());

    try {
      final result = await registerUseCase(
        name: name,
        email: email,
        password: password,
        role: role,
        extraData: extraData,
      );

      if (isClosed) return;

      await result.fold(
        (failure) async {
          if (!isClosed) emit(AuthError(failure.message));
        },
        (user) async {
          await tokenStorage.saveToken(user.token);
          await tokenStorage.saveUserRole(user.role);
          await tokenStorage.saveUserName(user.name);

          if (!isClosed) emit(AuthSuccess(user: user));
        },
      );
    } catch (e) {
      if (!isClosed) {
        emit(AuthError("Something went wrong. Please try again."));
      }
    }
  }
}
