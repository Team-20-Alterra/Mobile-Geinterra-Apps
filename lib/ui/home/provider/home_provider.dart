import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:geinterra_apps/data/remote/api_service.dart';
import 'package:geinterra_apps/ui/utils/result_state.dart';

import '../../../data/model/Response_invoices.dart';

class HomeProvider extends ChangeNotifier {
  var apiService = ApiService();
  var state = ResultState.Nothing;
  List<Invoice> list = [];
  var message = "";

  HomeProvider() {
    _getListInvoice();
  }

  Future<dynamic> _getListInvoice() async {
    state = ResultState.Loading;
    notifyListeners();

    try {
      state = ResultState.Success;
      var response = await apiService.fetchInvoice();
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
