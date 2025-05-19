
import 'package:flutter/cupertino.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/widgets/common_button_auth.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';

import '../../../common/theme/app_css.dart';
import '../../../common/theme/scale.dart';
import '../../../config.dart';
import '../../../routes/index.dart';
import '../../../widgets/text_form_filed_common.dart';

class FSWidgets {
  // Forget pin To reset your password... layout
  Widget fsTextLayout(context) => TextWidgetCommon(
          text: 'To reset your password, enter your registered email or phone number.',
          style: AppCss.latoLight14
              .textColor(appColors.lightText)
              .textHeight(1.4))
      .paddingOnly(bottom: Sizes.s20, top: Sizes.s40);

  // Forget pin email or phoneNumber layout
  Widget fsTextFiledLayout(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgetCommon(text: 'Email or phone'),
          TextFiledCommon(hintText: 'Enter your email or phone')
              .padding(vertical: Sizes.s10, bottom: Sizes.s60)
        ],
      );

  // Forget pin reset password button layout
  Widget fsButtonLayout(context) => Column(
        children: [
          CommonAuthButton(text: 'Reset password')
              .inkWell(
                  onTap: () =>''
                      // Navigator.pushNamed(context, routeName.resetPinScreen)
                      )
              .padding(top: Sizes.s10, bottom: Sizes.s20),
          TextWidgetCommon(
                  text: 'Sign in',
                  style: AppCss.latoMedium16.textColor(appColors.green))
              .center()
              .inkWell(
                  onTap: () => Navigator.pushReplacementNamed(
                      context, routeName.signInScreen))
        ],
      );
}
