import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/local/shared_pref.dart';
import 'package:geinterra_apps/data/model/bank_model.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';

enum BankViewState {
  none,
  loading,
  error,
}

class BankViewModel with ChangeNotifier {
  BankViewState _state = BankViewState.none;
  BankViewState get state => _state;

  final SharedPref pref;

  BankViewModel(this.pref) {
    getAllBank();
  }

  changeState(BankViewState s) {
    _state = s;
    notifyListeners();
  }

  BankModel? _bankModel;
  BankModel? get bankModel => _bankModel;

  getAllBank() async {
    changeState(BankViewState.loading);

    try {
      var token = await pref.token;
      final c = await ApiService.getAllBank(token);
      _bankModel = c;

      changeState(BankViewState.none);
    } catch (e) {
      changeState(BankViewState.error);
    }
  }
}
