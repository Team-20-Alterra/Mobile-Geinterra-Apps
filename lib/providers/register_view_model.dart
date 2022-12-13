import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/register_model.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum RegisterViewState {
  none,
  loading,
  error,
}

class RegisterViewModel extends ChangeNotifier {
  var apiService = ApiService();
  final formKey = GlobalKey<FormState>();
  bool _toogle = true;
  bool get toogle => _toogle;

  Future<void> register(String name, String email, String phone,
      String password, BuildContext context) async {
    //the user data to be sent
    Map<String, String> userRegister = {
      "name": name,
      "email": email,
      "password": password,
      "Phone": phone,
    };

    //get response from ApiClient
    try {
      final res = await apiService.registerUser(userRegister);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error: ${e.toString()}'),
        backgroundColor: Colors.red.shade300,
      ));
    }
  }

  toogleTheme() {
    _toogle = !_toogle;
    notifyListeners();
  }
}

  // Future<void> register(String name, String email, String phone,
  //     String password, BuildContext context) async {
  //   if (formKey.currentState!.validate()) {
  //     //show snackbar to indicate loading
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: const Text('Processing Data'),
  //       backgroundColor: Colors.green.shade300,
  //     ));

  //     //  the user data to be sent
  //     Map<String, dynamic> userRegister = {
  //       "name": name,
  //       "email": email,
  //       "password": password,
  //       "Phone": phone,
  //     };

  //     //get response from ApiClient
  //     dynamic res = await apiService.registerUser(userRegister);
  //     ScaffoldMessenger.of(context).hideCurrentSnackBar();

  //     //checks if there is no error in the response body.
  //     //if error is not present, navigate the users to Login Screen.
  //     if (res['ErrorCode'] == null) {
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const LoginPage()));
  //     } else {
  //       //if error is present, display a snackbar showing the error messsage
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text('Error: ${res['Message']}'),
  //         backgroundColor: Colors.red.shade300,
  //       ));
  //     }
  //   }