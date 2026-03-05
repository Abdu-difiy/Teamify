import 'package:dio/dio.dart';

import '../models/user_model.dart';
import '../../../../core/network/api_client.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String email,
    required String password,

  });

  Future<UserModel> register({
    required String name,
    required String email,
    required String password,
    required String role,
    String? extraField,
  });
   Future<UserModel> socialLogin(String token, String provider);
}


class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);
  

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    // try {
    //   final response = await apiClient.post(
    //     "https://dummyjson.com/auth/login",
    //     data: {
    //       "email": 'abdrhmaan@gmail.com',
    //       "password": '123456',
    //       "expiresInMins": 30,
    //     },
    //     options: Options(
    //       headers: {
    //         "Content-Type": "application/json",
    //       },
    //     ),
    //   );

    //   final data = response.data;

    //   return UserModel(
    //     id: data["id"] ?? 0,
    //     name: 'abdrhman',
    //     email: 'abdrhmaan@gmail.com',
    //     role: "user",
    //     token: data["token"]?.toString() ?? '',
    //   );
    // } catch (e) {
    //   throw Exception("Login failed: ${e.toString()}");
    // }

     await Future.delayed(const Duration(seconds: 1));

    if (email == "admin@test.com" && password == "123456") {
      return UserModel(
        id: 1,
        name: "Admin User",
        email: "admin@test.com",
        role: "user",
        token: "static_token_123456",
      );
    } else {
      throw Exception("Invalid credentials");
    }
    
  }

  @override
  Future<UserModel> socialLogin(String token, String provider) async {
    await Future.delayed(const Duration(seconds: 1));
    return UserModel(
      id: 2,
      name: "Social User",
      email: "social@test.com",
      role: "user",
      token: token,
    );
  }

  @override
  Future<UserModel> register({
    required String name,
    required String email,
    required String password,
    required String role,
    String? extraField,
  }) async {
    final response = await apiClient.post(
      "https://reqres.in",
      data: {
        "name": name,
        "email": email,
        "password": password,
        "role": role,
        "extraField": extraField,
      },
      options: Options(
        headers: {
          "x-api-key": "reqres-free-v1",
        },
      ),
    );

    final data = response.data['data'] ?? response.data;

    return UserModel.fromJson({
      ...data,
      'token': response.data['token'] ?? '',
    });
  }
}