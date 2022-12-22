import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/bank_model.dart';
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

  changeState(BankViewState s) {
    _state = s;
    notifyListeners();
  }

  ResponseBanks? _bankModel;

  ResponseBanks? get bankModel => _bankModel;

  Future<dynamic> _getAllBank() async {
    changeState(BankViewState.loading);

    try {
      final c = await ApiService.getAllBank();
      _bankModel = c;

      changeState(BankViewState.success);
    } catch (e) {
      changeState(BankViewState.error);
    }
  }
}
