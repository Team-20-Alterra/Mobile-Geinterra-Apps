import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:geinterra_apps/model/register_model.dart';
import 'package:http/http.dart' show Client;

class RegisterApi {
  // Map<String, dynamic> userRegister = {
  //   "Name":
  //   "Email": [
  //     {
  //       "Type": "Primary",
  //       "Value": _emailController.text,
  //     }
  //   ],
  //   "Password": _passwordController.text,
  //   "Phone": _phoneController.text,
  // };

  Dio dio = Dio();

  Future<RegisterModel> registerUser(Map<String, dynamic>? userRegister) async {
    try {
      Response response = await dio.post(
        'http://ec2-18-181-241-210.ap-northeast-1.compute.amazonaws.com:8000/api/v1/register/user', //ENDPONT URL
        data: userRegister, //REQUEST BODY
        // queryParameters: {'apikey': 'YOUR_API_KEY'}, //QUERY PARAMETERS
        // options: Options(headers: {
        //   'X-LoginRadius-Sott': 'YOUR_SOTT_KEY', //HEADERS
        // }),
      );
      //returns the successful json object
      return response.data;
    } on DioError catch (e) {
      //returns the error object if there is
      return e.response!.data;
    }
  }
  // final String baseUrl =
  //     "http://ec2-18-181-241-210.ap-northeast-1.compute.amazonaws.com:8000/api/v1/register/user";
  // Dio dio = Dio();

  // Future<bool> createRegister(RegisterModel register) async {
  //   final response = await dio.post(
  //     "$baseUrl/register/user",
  //     headers: {"content-type": "application/json"},
  //     body: userToJson(register),
  //   );
  //   if (response.statusCode == 201) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}

//   // Future registerUser(
//     {required String name,
//     required String email,
//     required String phone,
//     required String password}) async {
//   try {
//     final Response response = await dio.post(
//       'http://ec2-18-181-241-210.ap-northeast-1.compute.amazonaws.com:8000/api/v1/register/user',
//       data: {
//         'name': name,
//         'email': email,
//         'phone': phone,
//         'password': password,
//       },
//     );

//     debugPrint(response.data.toString());

//     return response.data;
//   } catch (e) {
//     rethrow;
//   }
// }
