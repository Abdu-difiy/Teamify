import 'package:flutter/material.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../../../core/storage/token_storage.dart';

class AuthProvider extends ChangeNotifier {
  final LoginUseCase loginUseCase;
  final TokenStorage tokenStorage;

  AuthProvider(this.loginUseCase, this.tokenStorage);

  bool isLoading = false;
  String? error;

  Future<void> login(String email, String password) async {
  try {
    isLoading = true;
    error = null;
    notifyListeners();

    final result = await loginUseCase(
      LoginParams(email: email, password: password),
    );

    result.fold(
      (failure) {
        error = failure.message;
      },
      (user) async {
        await tokenStorage.saveToken(user.token);
      },
    );
  } catch (e) {
    error = e.toString();
  } finally {
    isLoading = false;
    notifyListeners();
  }
}
  
}