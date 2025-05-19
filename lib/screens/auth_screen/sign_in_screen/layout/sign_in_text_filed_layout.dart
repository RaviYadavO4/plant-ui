import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/spacing.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/routes/index.dart';
import 'package:plant_ui/widgets/checkbox_common.dart';
import 'package:plant_ui/widgets/text_form_filed_common.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';
import 'package:provider/provider.dart';

import '../../../../config.dart';
import '../../../../providers/auth_provider/sign_in_provider.dart';


//signIn Screen enter email,enter pim,rememberMe,forgetPin layout
class SignInTextFiledLayout extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? pinController;
  const SignInTextFiledLayout({
    super.key,
     this.emailController,
     this.pinController,
  });

  @override
  Widget build(BuildContext context) {
  final signInCtrl = Provider.of<SignInProvider>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(text: 'Mobile number').paddingOnly(top: Sizes.s30),
      TextFiledCommon(
        hintText: 'Enter your mobile number',
        keyboardType: TextInputType.number,
        controller: emailController,
        maxLength: 10,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your mobile';
          }
          return null;
        },
      ).padding(bottom: Sizes.s18, top: Sizes.s8),
      TextWidgetCommon(text: 'Password'),
      TextFiledCommon(
              hintText: 'Enter your password',
              keyboardType: TextInputType.text,
              controller: pinController,
        obscureText: signInCtrl.showPin,
        isIcon: true,
        icon: IconButton(
            onPressed: () => signInCtrl.onShowPin(),
            icon: 
            signInCtrl.showPin
                ? const Icon(CupertinoIcons.eye_slash):
                 const Icon(CupertinoIcons.eye),
            color: appColors.gray.withOpacity(0.6)),
              validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          return null;
        },)
          .paddingSymmetric(vertical: Sizes.s8),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          CheckBoxCommon(
              isCheck: signInCtrl.isCheck,
              onTap: () => signInCtrl.isCheckBoxCheck(!signInCtrl.isCheck)),
          HSpace(Sizes.s8),
          TextWidgetCommon(
              text: 'Remember me',
              style: AppCss.latoLight12
                  .textColor(appColors.lightText))
        ]),
        TextWidgetCommon(
                text: 'Forget Password ?',
                style: AppCss.latoLight12
                    .textColor(appColors.green))
            .inkWell(onTap: () => Navigator.pushNamed(context, routeName.forgetPasswordScreen))
      ]).paddingOnly(bottom: Sizes.s30)
    ]);
  }
}
