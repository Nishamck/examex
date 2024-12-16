import 'package:flutter/material.dart';
import 'package:nisham/examcyberpark/ex8/model.dart';
class CounterProvider with ChangeNotifier {
  final CounterModel _counterModel = CounterModel();
  int get counter => _counterModel.counter;
  void increment() {
    _counterModel.increment();
    notifyListeners();
  }
  void decrement() {
    _counterModel.decrement();
    notifyListeners();
  }
}