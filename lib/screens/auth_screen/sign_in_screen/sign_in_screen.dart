import 'package:flutter/material.dart';
import 'package:plant_ui/common/assets/index.dart';
import 'package:plant_ui/common/extension/spacing.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/providers/auth_provider/sign_in_provider.dart';
import 'package:plant_ui/routes/index.dart';
import 'package:plant_ui/screens/auth_screen/sign_in_screen/layout/auth_background_layout.dart';
import 'package:plant_ui/screens/auth_screen/sign_in_screen/layout/sign_in_text_filed_layout.dart';
import 'package:plant_ui/screens/auth_screen/sign_in_screen/layout/sign_in_widgets.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<SignInProvider>(
      builder: (context,signInCtrl,child) {
        return PopScope(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appColors.screenBg,
            body: AuthBackgroundLayout(
                        topText1: 'Welcome back  !!',
                        topText2: 'Fill up the form',
                        isImage: true,
                        topImage: eImageAssets.splashAsset1,
                        top: Sizes.s40,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                           Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    SignInTextFiledLayout(),
                                    SignInWidgets().signInButton(on_Tap: () => Navigator.pushNamed(context, routeName.bottomBarLayout),),
                                     SignInWidgets().sigInRichText(context),
                                  ],
                                )
                              ),
                              SignInWidgets().signInDivider(context),
                              SignInWidgets().signInGoogleButton(context),
                             VSpace(20.0)
          
                            ],
                           )
                          ],
                        ),
                      )),
        );
      }
    );
    
  }
}