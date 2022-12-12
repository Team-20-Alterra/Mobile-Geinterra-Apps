import 'package:dio/dio.dart';

class CustomInterceptors extends LogInterceptor {
  final String token;

  CustomInterceptors({required this.token})
      : super(requestBody: true, responseBody: true);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Authorization"] = token;
    super.onRequest(options, handler);
  }
}
