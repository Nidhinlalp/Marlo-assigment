import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:transaction_app/model/transaction_model.dart';
import 'package:transaction_app/service/json_data.dart';

class TransactionFilterProvider with ChangeNotifier {
  // fetch transaction data
  TransactionRes? allTransactions;
  List<Datum>? transaction;
  DateTimeRange? dateTimeRange;
  List<String> timeRange = [
    'Today',
    'This week',
    'This month',
    'This quarter',
    'custom'
  ];
  List<String> timeRangeAdd = [];
  String? createCustomRange;
  Future<void> fetchTransactionData() async {
    try {
      final jsonData = JsonData().jsonData;
      allTransactions = TransactionRes.fromJson(jsonData);
      transaction = allTransactions?.data;
      notifyListeners();
    } catch (e) {
      log("error fetching data");
    }
  }

  newDateTimeRange(DateTimeRange newDate) {
    dateTimeRange = newDate;
    final dateTime = DateTime.parse(dateTimeRange!.start.toString());
    String formatedDate = DateFormat('d MMMM').format(dateTime);
    final dateTime2 = DateTime.parse(dateTimeRange!.end.toString());
    String formatedDate2 = DateFormat('d MMMM').format(dateTime2);

    createCustomRange = "$formatedDate - $formatedDate2";
    timeRange.removeLast();
    timeRange.add(createCustomRange!);
    notifyListeners();
  }
}
