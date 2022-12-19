import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  final Future<SharedPreferences> sharedpref;

  SharedPref({required this.sharedpref});

  final _tokenKey = 'tokenKey';
  final _isLoginKey = 'isLoginKey';

  Future<String> get token async {
    final pref = await sharedpref;
    return pref.getString(_tokenKey) ?? '';
  }

  void setToken(String value) async {
    final pref = await sharedpref;
    pref.setString(_tokenKey, value);
  }

  Future<bool> get isLogin async {
    final pref = await sharedpref;
    return pref.getBool(_isLoginKey) ?? false;
  }

  void setIsLogin(bool value) async {
    final pref = await sharedpref;
    pref.setBool(_isLoginKey, value);
  }

  void clearAllData() async {
    final pref = await sharedpref;
    pref.clear();
  }
}
