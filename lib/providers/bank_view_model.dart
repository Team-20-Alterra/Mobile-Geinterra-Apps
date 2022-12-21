import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/response_banks.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';

import '../data/local/shared_pref.dart';

enum BankViewState {
  none,
  loading,
  success,
  error,
}

class BankViewModel with ChangeNotifier {
  BankViewState _state = BankViewState.none;
  ApiService service = ApiService();
  final SharedPref pref;

  BankViewModel(this.pref) {
    _getAllBank();
  }

  BankViewState get state => _state;
  String? codeBank;

  void clearState() {
    codeBank = null;
    notifyListeners();
  }

  void setCodeBank(String code) {
    codeBank = code;
    notifyListeners();
  }

  changeState(BankViewState s) {
    _state = s;
    notifyListeners();
  }

  ResponseBanks? _bankModel;

  ResponseBanks? get bankModel => _bankModel;

  Future<dynamic> _getAllBank() async {
    changeState(BankViewState.loading);

    try {
      var token = await pref.token;
      final c = await service.getAllBank(token);
      _bankModel = c;

      changeState(BankViewState.success);
    } catch (e) {
      changeState(BankViewState.error);
    }
  }
}
