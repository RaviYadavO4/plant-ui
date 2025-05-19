import 'package:flutter/material.dart';
import 'package:plant_ui/routes/index.dart';
import 'package:plant_ui/screens/auth_screen/sign_up_screens/sign_up_screen.dart';
import 'package:plant_ui/screens/bottom_screen/bottom_bar_layout/bottom_bar_layout.dart';

import '../screens/auth_screen/forget_pass_screen/forget_password_screen.dart';
import '../screens/auth_screen/sign_in_screen/sign_in_screen.dart';
import '../screens/auth_screen/splash_screen/splash_screen.dart';

class AppRoute {
  Map<String, Widget Function(BuildContext)> route = {
    routeName.splash: (p0) => const SplashScreen(),

    routeName.signInScreen: (p0) => const SignInScreen(),
 
    routeName.signupScreen: (p0) => const SignUpScreen(),
    routeName.forgetPasswordScreen: (p0) => const ForgetPasswordScreen(),
    routeName.bottomBarLayout: (p0) => const BottomBarLayout(),

  };
}
