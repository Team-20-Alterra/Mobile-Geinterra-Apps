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
  final formKey = GlobalKey<FormState>();
  late SharedPreferences logindata;

  bool _newUser = false;

  bool get newUser => _newUser;

  final ApiService _service = ApiService();
  var state = ResultState.Empty;
  var message = "";
  late ResponseLogin responseLogin;
  final SharedPref pref;

  LoginProvider(this.pref);

  Future<bool> getStateLogin() async {
    return await pref.isLogin;
  }

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
      pref.setIsLogin(true);
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
}
