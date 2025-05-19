
import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/widgets/common_button_auth.dart';
import 'package:plant_ui/widgets/sign_in_sign_up_rich_text.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';

import '../../../../common/assets/index.dart';
import '../../../../common/theme/app_css.dart';
import '../../../../routes/index.dart';
import '../../../../widgets/common_button.dart';

class SignInWidgets {
  // SignIn screen signIn button layout
  Widget signInButton({VoidCallback? on_Tap}) => CommonAuthButton(text: 'Sign in')
      .padding(bottom: Sizes.s15)
      .inkWell(
           onTap: on_Tap,);

  // SignIn screen Don't have an any account ? signup text layout
  Widget sigInRichText(context) => SignInSingUpRichText(
              lightText:  "Don't have an any account ?",
              primaryText:  "Sign up")
          .inkWell(
        onTap: () =>Navigator.pushNamed(context, routeName.signupScreen),
      );

  // signIn screen divider layout
  Widget signInDivider(context) => Stack(children: [
        Divider(color: appColors.dividerColor),
        Container(
                height: Sizes.s20,
                width: Sizes.s45,
                color: appColors.lightGreen,
                child: TextWidgetCommon(
                        text: "Or",
                        style: AppCss.latoMedium16
                            .textColor(appColors.lightText))
                    .center())
            .center()
      ]).padding(vertical: Sizes.s30);

  // signIn screen login with google & login with facebook button layout
  Widget signInGoogleButton(context) => Column(
        children: [
          CommonButton(
              image: eSvgAssets.google,
              text: "Continue with Google",
              textColor: appColors.darkText,
              color: appColors.gray.withOpacity(0.1)),
          CommonButton(
                  image: eSvgAssets.facebook,
                  text: "Continue with FaceBook",
                  textColor: appColors.darkText,
                  color: appColors.gray.withOpacity(0.1))
              .padding(top: Sizes.s10)
        ],
      );
}
