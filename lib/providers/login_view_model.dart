import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';
import 'package:geinterra_apps/ui/home/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends ChangeNotifier {
  var apiService = ApiService();
  final formKey = GlobalKey<FormState>();
  late SharedPreferences logindata;

  bool _newUser = false;
  String _password = '';
  String _email = '';

  bool get newUser => _newUser;
  String get password => _password;
  String get email => _email;

  Future<void> login(
      String email, String password, BuildContext context) async {
    //the user data to be sent
    Map<String, String> userLogin = {"email": email, "password": password};

    //get response from ApiClient
    try {
      final res = await apiService.loginUser(userLogin);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainPage()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error: ${e.toString()}'),
        backgroundColor: Colors.red.shade300,
      ));
    }
  }

  Future<void> checkLogin(BuildContext context) async {
    logindata = await SharedPreferences.getInstance();
    _newUser = logindata.getBool('login') ?? true;
    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(),
          ),
          (route) => false);
    }
    notifyListeners();
  }

  Future<void> addBool(bool a) async {
    logindata = await SharedPreferences.getInstance();
    logindata.setBool('login', a);
    notifyListeners();
  }

  Future<void> setPassword(String password) async {
    logindata = await SharedPreferences.getInstance();
    logindata.setString('password', password);
    notifyListeners();
  }

  Future<void> setEmail(String email) async {
    logindata = await SharedPreferences.getInstance();
    logindata.setString('email', email);
    notifyListeners();
  }

  Future<void> initial() async {
    logindata = await SharedPreferences.getInstance();
    _email = logindata.getString('email').toString();
    _password = logindata.getString('password').toString();
    notifyListeners();
  }
}
