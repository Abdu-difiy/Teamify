import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';
import '../entities/user.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GitHubLoginUseCase {
  final AuthRepository repository;
  final String clientId;
  final String clientSecret;
  final String redirectUri;

  GitHubLoginUseCase(
    this.repository, {
    required this.clientId,
    required this.clientSecret,
    required this.redirectUri,
  });

  Future<Either<Failure, User>> call() async {
    try {
      /// 1️⃣ فتح صفحة GitHub Login
      final authorizationUrl =
          "https://github.com/login/oauth/authorize"
          "?client_id=$clientId"
          "&redirect_uri=$redirectUri"
          "&scope=read:user,user:email";

      final result = await FlutterWebAuth2.authenticate(
        url: authorizationUrl,
        callbackUrlScheme: Uri.parse(redirectUri).scheme,
      );

      /// 2️⃣ استخراج الكود
      final uri = Uri.parse(result);
      final code = uri.queryParameters['code'];

      if (code == null || code.isEmpty) {
        throw Exception("GitHub login canceled or failed");
      }

      /// 3️⃣ طلب access token
      final tokenResponse = await http.post(
        Uri.parse("https://github.com/login/oauth/access_token"),
        headers: {
          "Accept": "application/json",
        },
        body: {
          "client_id": clientId,
          "client_secret": clientSecret,
          "code": code,
          "redirect_uri": redirectUri,
        },
      );

      if (tokenResponse.statusCode != 200) {
        throw Exception("Failed to retrieve access token");
      }

      final tokenData = jsonDecode(tokenResponse.body);
      final accessToken = tokenData['access_token'];

      if (accessToken == null || accessToken.isEmpty) {
        throw Exception("Access token is empty");
      }

      /// 4️⃣ إرسال التوكن للـ backend
      return await repository.socialLogin(accessToken, "github");
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}