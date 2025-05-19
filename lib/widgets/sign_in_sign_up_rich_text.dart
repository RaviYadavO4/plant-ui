import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/config.dart';


class SignInSingUpRichText extends StatelessWidget {
  final String? lightText;
  final String? primaryText;
  final GestureTapCallback? onTap;

  const SignInSingUpRichText(
      {super.key, this.lightText, this.primaryText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text:  lightText,
            style: AppCss.latoMedium16
                .textColor(appColors.lightText)),
        TextSpan(
          recognizer: TapGestureRecognizer()..onTap = onTap,
          text:  " $primaryText",
          style:
              AppCss.latoMedium16.textColor(appColors.green),
        ),
      ]),
    ).center() /*.padding(bottom: Sizes.s10)*/;
  }
}
