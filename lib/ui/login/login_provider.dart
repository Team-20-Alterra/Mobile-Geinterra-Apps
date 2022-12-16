import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:geinterra_apps/data/local/shared_pref.dart';
import 'package:geinterra_apps/data/model/response_login.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';

import '../utils/result_state.dart';

class LoginProvider extends ChangeNotifier {
  final ApiService _service = ApiService();
  var state = ResultState.Empty;
  var message = "";
  late ResponseLogin responseLogin;
  final SharedPref pref;

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
}
