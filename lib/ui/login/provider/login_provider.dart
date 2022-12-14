import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/home/home_page.dart';
import 'dart:async';
import '../../../data/remote/api_service.dart';

enum LoginState {
  none,
  loading,
  error,
}

class LoginProvider extends ChangeNotifier {
  var apiService = ApiService();
  final formKey = GlobalKey<FormState>();
  bool _toogle = true;
  bool get toogle => _toogle;

  Future<void> login(
      String email, String password, BuildContext context) async {
    //the user data to be sent
    Map<String, dynamic> userLogin = {
      "email": email,
      "password": password,
    };

    //get response from ApiClient
    try {
      final res = await apiService.loginUser(userLogin);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
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
