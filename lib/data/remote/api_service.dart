import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:geinterra_apps/data/model/Response_invoices.dart';
import 'package:geinterra_apps/data/model/notif_model.dart';
import 'package:geinterra_apps/data/model/register_model.dart';
import 'package:geinterra_apps/data/model/response_banks.dart';
import 'package:geinterra_apps/data/model/response_login.dart';

class ApiService {
  final String _baseUrl =
      "http://ec2-18-181-241-210.ap-northeast-1.compute.amazonaws.com:8000/api/v1/";
  final Dio _dio = Dio();

  ApiService() {
    _dio.interceptors.add(LogInterceptor());
  }

  Future<ResponseInvoices> fetchInvoice(String token) async {
    try {
      var response = await _dio.get(
        "${_baseUrl}invoices",
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      return ResponseInvoices.fromJson(response.data);
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString());
      throw Exception(errorMessage);
    }
  }

  Future<RegisterModel> registerUser(Map<String, String> userRegister) async {
    try {
      var response =
          await _dio.post("${_baseUrl}register/user", data: userRegister);

      return RegisterModel.fromJson(response.data);
    } on DioError catch (e) {
      String errorMessage = json.decode(e.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }

  Future<ResponseLogin> login(Map<String, String> loginBody) async {
    try {
      var response = await _dio.post("${_baseUrl}login", data: loginBody);

      return ResponseLogin.fromJson(response.data);
    } on DioError catch (e) {
      String errorMessage = json.decode(e.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }

  Future<ResponseBanks> getAllBank(token) async {
    try {
      var response = await _dio.get(
        "${_baseUrl}banks",
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      return ResponseBanks.fromJson(response.data);
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString());
      throw Exception(errorMessage);
    }
  }

  // Future<PaidModel> getAllSuccess(String id) async {
  //   try {
  //     var response = await _dio.get(
  //       "${_baseUrl}/invoices/$id",
  //     );

  //     return PaidModel.fromJson(response.data);
  //   } on DioError catch (ex) {
  //     String errorMessage = json.decode(ex.response.toString());
  //     throw Exception(errorMessage);
  //   }
  // }

  Future<NotifModel> getAllNotif(String token) async {
    try {
      var response = await _dio.get(
        "${_baseUrl}notif",
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      return NotifModel.fromJson(response.data);
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString());
      throw Exception(errorMessage);
    }
  }
}
