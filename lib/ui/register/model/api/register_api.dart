import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

// import 'package:geinterra_apps/ui/register/model/register_model.dart';
// import 'package:http/http.dart' show Client;

class RegisterApi {
  final Dio dio = Dio();

  Future createUser(
      {required String name,
      required String email,
      required String phone,
      required String password}) async {
    try {
      final Response response = await dio.post(
        'http://ec2-18-181-241-210.ap-northeast-1.compute.amazonaws.com:8000/api/v1/register/user',
        data: {
          'name': name,
          'email': email,
          'phone': phone,
          'password': password,
        },
      );

      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
