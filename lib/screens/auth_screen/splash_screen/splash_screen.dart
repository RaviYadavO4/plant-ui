import 'package:flutter/material.dart';
import 'package:plant_ui/common/assets/index.dart';
import 'package:plant_ui/common/extension/spacing.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/routes/index.dart';
import 'package:plant_ui/screens/auth_screen/splash_screen/layout/splash_widget.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';

import '../../../config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 25),
           Text(
            'Let\'s plant with us',
            style: TextStyle(
              fontSize: FontSizes.f22,
              letterSpacing: 1.8,
              fontWeight: FontWeight.w900,
            ),
          ),
          VSpace(Sizes.s5),
          TextWidgetCommon(
            text: 'Bring nature home',
             style: TextStyle(
              color: appColors.grey,
              fontSize: FontSizes.f16,
              letterSpacing: 1.8,
              fontWeight: FontWeight.w600,
              )
          ),
           
          
          SizedBox(
            height: Sizes.s450,
            width: Sizes.s450,
            child: Image.asset(eImageAssets.splashAsset1),
          ),
          const SizedBox(height: 25),
          SplashWidget().signInButtonLayout(onTap: () => Navigator.pushNamed(context, routeName.signInScreen)),
          SplashWidget().signUpButtonLayout(onTap: () => Navigator.pushNamed(context, routeName.signupScreen), ),
          TextButton(
            onPressed: ()=>Navigator.pushNamed(context, routeName.forgetPasswordScreen),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: appColors.black.withOpacity(0.4),
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}