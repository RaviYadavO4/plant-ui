import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';

import '../../../../config.dart';

class SplashWidget {
  Widget signInButtonLayout({VoidCallback? onTap}) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 12.0),
    decoration: BoxDecoration(
      color: appColors.green,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Text(
      'Sign In',
      style: TextStyle(
        color: appColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ).inkWell(onTap: onTap);

  Widget signUpButtonLayout({required VoidCallback onTap}) => TextButton(
    onPressed: onTap,
    child: Text(
      'Create an account',
      style: TextStyle(
        color: appColors.black.withOpacity(0.7),
        fontSize: 16,
        letterSpacing: 1,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
