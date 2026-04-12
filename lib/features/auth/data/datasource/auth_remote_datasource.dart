import 'package:dio/dio.dart';
import '../models/user_model.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/errors/exceptions.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({required String email, required String password});

  Future<UserModel> register({
    required String name,
    required String email,
    required String password,
    required String role,
    Map<String, dynamic>? extraData,
  });

  Future<UserModel> socialLogin(String token, String provider);

  // 🔥 ميثودز نسيان كلمة المرور
  Future<void> sendOtp(String email);
  Future<void> verifyOtp(String otp);
  Future<void> resetPassword(String newPassword);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      if (email == "admin@test.com" && password == "123456") {
        return UserModel(
          id: 1,
          name: "Admin User",
          email: email,
          role: "user",
          token: "static_token_123456",
        );
      } else {
        throw ServerException("Invalid email or password");
      }
    } on DioError catch (e) {
      throw ServerException(e.response?.data['message'] ?? e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> socialLogin(String token, String provider) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return UserModel(
        id: 2,
        name: "Social User",
        email: "social@test.com",
        role: "user",
        token: token,
      );
    } on DioError catch (e) {
      throw ServerException(e.response?.data['message'] ?? e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> register({
    required String name,
    required String email,
    required String password,
    required String role,
    Map<String, dynamic>? extraData,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return UserModel(
        id: DateTime.now().millisecondsSinceEpoch,
        name: name,
        email: email,
        role: role,
        token: "fake_token_${DateTime.now().millisecondsSinceEpoch}",
      );
    } on DioError catch (e) {
      throw ServerException(e.response?.data['message'] ?? e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  // 🔥 Implementation بتاع الـ Forgot Password (Fake حالياً)

  @override
  Future<void> sendOtp(String email) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      // هنا المفروض تنادي الـ API:
      // await apiClient.post("/auth/forgot-password", data: {"email": email});
    } catch (e) {
      throw ServerException("Failed to send OTP");
    }
  }

  @override
  Future<void> verifyOtp(String otp) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      if (otp != "1234") { // كود وهمي للتجربة
         throw ServerException("Invalid OTP code");
      }
      // الـ API الحقيقي:
      // await apiClient.post("/auth/verify-otp", data: {"otp": otp});
    } catch (e) {
      throw ServerException(e is ServerException ? e.message : "OTP Verification Failed");
    }
  }

  @override
  Future<void> resetPassword(String newPassword) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      // الـ API الحقيقي:
      // await apiClient.post("/auth/reset-password", data: {"password": newPassword});
    } catch (e) {
      throw ServerException("Failed to reset password");
    }
  }
}