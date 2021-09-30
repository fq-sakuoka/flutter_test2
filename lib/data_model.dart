import 'package:flutter/material.dart';

class DataModel with ChangeNotifier {

  String _text = "";
  bool _flg = false;

  String get text => _text;
  bool get flg => _flg;

  void onTextUpdate(String text) {
    _text = text;
    notifyListeners();
  }

  void onFlgUpdate(bool flg) {
    _flg = flg;
    notifyListeners();
  }

}