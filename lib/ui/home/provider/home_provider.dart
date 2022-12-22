import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:geinterra_apps/data/model/invoice_model.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';
import 'package:geinterra_apps/ui/utils/result_state.dart';

import '../../../data/local/shared_pref.dart';
import '../../../data/model/Response_invoices.dart';

class HomeProvider extends ChangeNotifier {
  var apiService = ApiService();
  var state = ResultState.Loading;
  List<Invoice> list = [];
  var message = "";
  final SharedPref pref;

  HomeProvider(this.pref) {
    _getListInvoice();
  }

  InvoiceModel? _invoice;
  InvoiceModel? get invoice => _invoice;

  Future<dynamic> _getListInvoice() async {
    state = ResultState.Loading;
    notifyListeners();

    try {
      state = ResultState.Success;
      var token = await pref.token;
      var response = await apiService.fetchInvoice(token);
      list.clear();
      list.addAll(response.invoices);
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      state = ResultState.Error;
      notifyListeners();
    }
  }
}
