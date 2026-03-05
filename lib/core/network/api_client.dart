import 'package:dio/dio.dart';
import 'package:teamify/core/storage/token_storage.dart';

class ApiClient {
  final Dio dio;
  final TokenStorage tokenStorage;

  ApiClient(this.tokenStorage)
      : dio = Dio(
          BaseOptions(
            baseUrl: "https://my-teamify-api.com/api/v1",
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
          ),
        ) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await tokenStorage.getToken();

          if (token != null && !options.path.contains("login")) {
            options.headers["Authorization"] = "Bearer $token";
          }

          return handler.next(options);
        },
      ),
    );
  }

  Future<Response> post(
  String path, {
  dynamic data,
  Options? options,
}) async {
  return await dio.post(
    path,
    data: data,
    options: options,
  );
}

  Future<Response> get(String path) async {
    return await dio.get(path);
  }
}
