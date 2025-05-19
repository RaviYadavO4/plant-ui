import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  bool isCheck = false;
  bool showPin = true;
// check box change value true or false
  isCheckBoxCheck(value) {
    isCheck = value;
    notifyListeners();
  }

  //enter password show and hide
  onShowPin() {
    showPin = !showPin;
    notifyListeners();
  }

}