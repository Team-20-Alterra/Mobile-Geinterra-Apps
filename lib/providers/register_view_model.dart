import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';

import '../theme.dart';

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
      "phone": phone,
    };

    //get response from ApiClient
    try {
      final res = await apiService.registerUser(userRegister);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Success Create New User'),
        backgroundColor: primaryGreen,
      ));
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
