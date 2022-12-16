import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileViewModel extends ChangeNotifier {
  late SharedPreferences logindata;
  String _email = '';
  String _password = '';

  String get email => _email;
  String get password => _password;

  Future<void> initial() async {
    logindata = await SharedPreferences.getInstance();
    _email = logindata.getString('username').toString();
    _password = logindata.getString('email').toString();
    notifyListeners();
  }

  Future<void> deleteEmail(String email) async {
    logindata = await SharedPreferences.getInstance();
    logindata.remove('username');
    notifyListeners();
  }

  Future<void> deletePassword(String password) async {
    logindata = await SharedPreferences.getInstance();
    logindata.remove('password');
    notifyListeners();
  }
}
