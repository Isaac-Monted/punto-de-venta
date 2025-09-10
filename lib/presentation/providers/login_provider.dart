import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool _ocultar = true;
  bool get ocultar => _ocultar;

  void visibilitiPassword() {
    _ocultar = !_ocultar;
    notifyListeners();
  }
}