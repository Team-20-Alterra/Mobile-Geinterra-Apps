import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/local/shared_pref.dart';
import 'package:geinterra_apps/data/model/notif_model.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';

enum NotifViewState {
  none,
  loading,
  success,
  error,
}

class NotifViewModel with ChangeNotifier {
  NotifViewState _state = NotifViewState.none;
  ApiService service = ApiService();
  final SharedPref pref;

  NotifViewModel(this.pref) {
    _getAllNotif();
  }

  NotifViewState get state => _state;
  String? codeBank;

  void clearState() {
    codeBank = null;
    notifyListeners();
  }

  void setCodeBank(String code) {
    codeBank = code;
    notifyListeners();
  }

  changeState(NotifViewState s) {
    _state = s;
    notifyListeners();
  }

  NotifModel? _notif;
  NotifModel? get notif => _notif;

  Future<dynamic> _getAllNotif() async {
    changeState(NotifViewState.loading);

    try {
      var token = await pref.token;
      final n = await service.getAllNotif(token);
      _notif = n;

      changeState(NotifViewState.success);
    } catch (e) {
      changeState(NotifViewState.error);
    }
  }
}
