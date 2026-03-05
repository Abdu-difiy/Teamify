import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';
import '../entities/user.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

class LinkedInLoginUseCase {
  final AuthRepository repository;
  final String clientId;
  final String clientSecret;
  final String redirectUri;

  LinkedInLoginUseCase({
    required this.repository,
    required this.clientId,
    required this.clientSecret,
    required this.redirectUri,
  });


  Future<Either<Failure, User>> call() async {
    try {
      // افتح صفحة تسجيل الدخول في المتصفح
      final result = await FlutterWebAuth2.authenticate(
        url:
            "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=$clientId&redirect_uri=$redirectUri&scope=r_liteprofile%20r_emailaddress",
        callbackUrlScheme: redirectUri.split("://")[0],
      );

      // استخرج الكود من الرابط المعاد
      final code = Uri.parse(result).queryParameters['code'] ?? "";
      if (code.isEmpty) throw Exception("LinkedIn login canceled");

      // هنا ممكن تعمل request لـ LinkedIn للحصول على token
      final token = await getLinkedInToken(code);

      return await repository.socialLogin(token, "linkedin");
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  // مثال دالة للحصول على token
  Future<String> getLinkedInToken(String code) async {
    // هنا هتعمل POST request على https://www.linkedin.com/oauth/v2/accessToken
    // وتستخرج access_token
    return "linkedIn_dummy_token"; // مؤقت للتجربة
  }
}