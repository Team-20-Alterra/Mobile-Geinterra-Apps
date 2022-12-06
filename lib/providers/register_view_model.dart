import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterViewModel extends ChangeNotifier {
  late SharedPreferences registerdata;
  bool _newUser = false;
  bool _toogle = true;
  String _username = '';
  String _email = '';
  String _phone = '';
  String _password = '';

  bool get toogle => _toogle;
  bool get newUser => _newUser;
  String get username => _username;
  String get email => _email;
  String get phone => _phone;
  String get password => _password;

  // Data? userData;
  // bool isLoading = false;

  // void getUser() async {
  //   //panggil fetchData dari class myServices
  //   RegisterApi services = RegisterApi();
  //   isLoading = true;
  //   final api = await services.fetchData();
  //   userData = api!;
  //   isLoading = false;

  //   notifyListeners();
  // }

  Future<void> addBool(bool a) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setBool('register', a);
    notifyListeners();
  }

  Future<void> setName(String username) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('username', username);
    notifyListeners();
  }

  Future<void> setEmail(String email) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('email', email);
    notifyListeners();
  }

  Future<void> setPhone(String email) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('phone', phone);
    notifyListeners();
  }

  Future<void> setPassword(String email) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('password', password);
    notifyListeners();
  }

  Future<void> initial() async {
    registerdata = await SharedPreferences.getInstance();
    _username = registerdata.getString('username').toString();
    _email = registerdata.getString('email').toString();
    _phone = registerdata.getString('phone').toString();
    _password = registerdata.getString('password').toString();
    notifyListeners();
  }

  toogleTheme() {
    _toogle = !_toogle;
    notifyListeners();
  }
}
