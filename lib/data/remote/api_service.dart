import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:geinterra_apps/data/model/Response_invoices.dart';
import 'package:geinterra_apps/data/model/register_model.dart';

import '../../ui/utils/custom_interceptors.dart';

class ApiService {
  final String _baseUrl =
      "http://ec2-18-181-241-210.ap-northeast-1.compute.amazonaws.com:8000/api/v1/";
  final Dio _dio = Dio();

  ApiService() {
    // _dio.interceptors.add(CustomInterceptors());
    _dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
  }

  Future<ResponseInvoices> fetchInvoice() async {
    try {
      var response = await _dio.get("${_baseUrl}invoices");

      return ResponseInvoices.fromJson(response.data);
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }

  Future<RegisterModel> registerUser(Map<String, dynamic> userRegister) async {
    try {
      var response = await _dio.post(
        "${_baseUrl}/register/user",
      );

      return RegisterModel.fromJson(response.data);
    } on DioError catch (e) {
      String errorMessage = json.decode(e.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }
}
