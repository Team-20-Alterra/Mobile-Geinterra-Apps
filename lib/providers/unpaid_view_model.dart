import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/local/shared_pref.dart';
import 'package:geinterra_apps/data/model/invoice_model.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';

enum UnpaidViewState {
  none,
  loading,
  success,
  error,
}

class UnpaidViewModel with ChangeNotifier {
  UnpaidViewState _state = UnpaidViewState.none;
  ApiService service = ApiService();
  final SharedPref pref;

  UnpaidViewModel(this.pref) {
    _getAllKonfirm();
  }

  UnpaidViewState get state => _state;
  // String? codeBank;

  // void clearState() {
  //   codeBank = null;
  //   notifyListeners();
  // }

  // void setCodeBank(String code) {
  //   codeBank = code;
  //   notifyListeners();
  // }

  changeState(UnpaidViewState s) {
    _state = s;
    notifyListeners();
  }

  InvoiceModel? _konfirm;
  InvoiceModel? get konfirm => _konfirm;

  Future<dynamic> _getAllKonfirm() async {
    changeState(UnpaidViewState.loading);

    try {
      var token = await pref.token;
      final n = await service.getAllKonfirm(token);
      _konfirm = n;

      changeState(UnpaidViewState.success);
    } catch (e) {
      changeState(UnpaidViewState.error);
    }
  }
}
