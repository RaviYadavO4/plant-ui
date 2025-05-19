import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier{

  bool showPassword = true;
  bool showConfirmPassword = true;
  var password  = '';



  bool isCheck = false;
// SignUp screen check box change value true or false
  isCheckBoxCheck(value) {
    isCheck = value;
    notifyListeners();
  }


  //confirm password show and hide
  onShowConfirmPassword() {
    showConfirmPassword = !showConfirmPassword;
    notifyListeners();
  }

  //enter password show and hide
  onShowPassword() {
    showPassword = !showPassword;
    notifyListeners();
  }

  onMatchPassword(var password1){
    password = password1;
    notifyListeners();

  }

}