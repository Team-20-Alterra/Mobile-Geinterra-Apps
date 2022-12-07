import 'package:flutter/material.dart';
import 'package:geinterra_apps/model/register_model.dart';
import 'package:geinterra_apps/services/register_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum RegisterViewState {
  none,
  loading,
  error,
}

class RegisterViewModel extends ChangeNotifier {
  bool _toogle = true;
  bool get toogle => _toogle;

  toogleTheme() {
    _toogle = !_toogle;
    notifyListeners();
  }

  // RegisterViewState _state = RegisterViewState.none;
  // RegisterViewState get state => _state;

  // changeState(RegisterViewState s) {
  //   _state = s;
  // }

  // RegisterModel? _users;
  // RegisterModel? get users => _users;

  // registerUser(id) async {
  //   changeState(RegisterViewState.loading);

  //   try {
  //     final c = await RegisterApi.registerUser(id);
  //     _users = c;

  //     changeState(RegisterViewState.none);
  //   } catch (e) {
  //     changeState(RegisterViewState.error);
  //   }
  //   notifyListeners();
  // }
}
