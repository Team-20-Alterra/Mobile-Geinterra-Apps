import 'package:dio/dio.dart';

class CustomInterceptors extends LogInterceptor {
  final String token;

  CustomInterceptors({required this.token})
      : super(requestBody: true, responseBody: true);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Authorization"] =
        "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZW1haWwiOiJjaG9zdGluZzYzQGdtYWlsLmNvbSIsInJvbGUiOiJBZG1pbiIsImV4cCI6MTY3MDg1MzMzN30.yuXKAwnKZ3tfdeXEskNd0aWJKeEy4oyzMDEZsiKOS1o";
    super.onRequest(options, handler);
  }
}
