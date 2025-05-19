import 'package:flutter/material.dart';
import 'package:plant_ui/common/assets/index.dart';

import '../../../common/theme/scale.dart';
import '../sign_in_screen/layout/auth_background_layout.dart';
import 'fs_widgets.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          resizeToAvoidBottomInset: false,
          body: AuthBackgroundLayout(
              topText1: "Forget your Password",
              topText2: "Don’t worry !",
              topImage: eImageAssets.splashAsset1,
              isImage: true,
              top: Sizes.s35,
              child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                shrinkWrap: true,
                children: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Forget pin To reset your password... layout
                        FSWidgets().fsTextLayout(context),
                        // Forget pin email or phoneNumber layout
                        FSWidgets().fsTextFiledLayout(context),
                        // Forget pin reset password button layout
                        FSWidgets().fsButtonLayout(context)
                      ]),
                    ],
              )));
  }
}