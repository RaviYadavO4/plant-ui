import 'package:flutter/material.dart';
import 'package:plant_ui/common/assets/index.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';

import '../sign_in_screen/layout/auth_background_layout.dart';
import 'layout/sign_up_text_filed_layout.dart';
import 'layout/sign_up_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColors.screenBg,
        body: AuthBackgroundLayout(
          topText1: 'Create an account',
          topText2: 'Fill up the form',
          topImage: eImageAssets.splashAsset1,
          isImage: true,
          top: Sizes.s45,
          child: Form(
            key: _formKey,
            child: ListView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                shrinkWrap: true,
                children: [
                  Column(children: [
                    // signUp screen enter FullName,enter email,enter pin,confirm pin,I Agree To AllTerms & condition text & textFiled layout
                    SignupTextFiledLayout(),
                    //SignUp button Layout
                    SignUpWidgets().signUpButtonLayout(),
                    // Signup already have an account rich text
                    SignUpWidgets().signupRichTextLayout(context)
                  ]),
                ]),
          ),
        ),
      );
  }
}