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
            "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=$clientId&redirect_uri=$redirectUri&scope=openid%20profile%20email",

        // ✅ ملحوظة: غيرت الـ scope لـ openid profile email لأنها النسخة الأحدث من LinkedIn
        callbackUrlScheme:
            "https", // ✅ غيرنا دي لـ https عشان يلقط الرجوع لصفحة الـ GitHub

            // preferEphemeral: true, // ✅ عشان يفتح في وضع التصفح الخفي
      );

      // استخرج الكود من الرابط المعاد
      final code = Uri.parse(result).queryParameters['code'] ?? "";
      if (code.isEmpty) throw Exception("LinkedIn login canceled");

      // الحصول على الـ Token (مؤقتاً Static كما طلبت لمشروعك)
      final token = await getLinkedInToken(code);

      return await repository.socialLogin(token, "linkedin");
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<String> getLinkedInToken(String code) async {
    // في الوضع الحقيقي بنعمل POST request هنا
    return "linkedIn_dummy_token";
  }
}
