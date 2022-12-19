import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/local/shared_pref.dart';
import 'package:geinterra_apps/data/model/response_login.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';
import 'package:geinterra_apps/ui/home/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/result_state.dart';

class LoginProvider extends ChangeNotifier {
  final ApiService _service = ApiService();
  var state = ResultState.Empty;
  var message = "";
  late ResponseLogin responseLogin;
  final SharedPref pref;

  late SharedPreferences logindata;

  bool _newUser = false;
  String _password = '';
  String _email = '';

  bool get newUser => _newUser;
  String get password => _password;
  String get email => _email;

  LoginProvider(this.pref);

  Future<dynamic> login(String email, String password) async {
    state = ResultState.Loading;
    notifyListeners();

    try {
      Map<String, String> bodyLogin = {
        "email": email,
        "password": password,
      };

      responseLogin = await _service.login(bodyLogin);
      pref.setToken(responseLogin.data.token);
      state = ResultState.Success;
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      state = ResultState.Error;
      notifyListeners();
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
