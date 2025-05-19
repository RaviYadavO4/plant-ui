import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/providers/auth_provider/sign_up_provider.dart';
import 'package:plant_ui/widgets/text_form_filed_common.dart';
import 'package:provider/provider.dart';
import '../../../../common/theme/scale.dart';
import '../../../../config.dart';
import '../../../../widgets/text_widgets_common.dart';

class SignupTextFiledLayout extends StatelessWidget {
  final TextEditingController? nameController;
  final TextEditingController? emailController;
  final TextEditingController? mobileController;
  final TextEditingController? passwordController;
  final TextEditingController? cnfPasswordController;
  final TextEditingController? aadhaarController;
  final TextEditingController? panController;

  const SignupTextFiledLayout({
    super.key,
    this.nameController,
    this.emailController,
    this.mobileController,
    this.passwordController,
    this.cnfPasswordController,
    this.aadhaarController,
    this.panController,
  });

  @override
  Widget build(BuildContext context) {
    final signupCtrl = Provider.of<SignUpProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(text: 'Full Name').paddingOnly(top: Sizes.s25),
        TextFiledCommon(
          hintText: 'Enter your name',
          controller: nameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your name';
            }
            return null;
          },
        ).padding(top: Sizes.s10, bottom: Sizes.s18),
        TextWidgetCommon(text: 'Email id'),
        TextFiledCommon(
          hintText: 'Enter your mail id',
          keyboardType: TextInputType.emailAddress,
          controller: emailController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return 'Please enter a valid email address';
            }
            return null;
          },
        ).padding(top: Sizes.s10, bottom: Sizes.s18),
        TextWidgetCommon(text: 'Phone Number'),
        TextFiledCommon(
          hintText: 'Enter your Phone Number',
          maxLength: 10,
          keyboardType: TextInputType.number,
          controller: mobileController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your mobile';
            }
            if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
              return 'Please enter a valid 10-digit mobile number';
            }
            return null;
          },
        ).padding(top: Sizes.s10, bottom: Sizes.s18),
        TextWidgetCommon(text: 'Password'),
        TextFiledCommon(
          hintText: 'Enter  Password',
          keyboardType: TextInputType.text,
          controller: passwordController,
          obscureText: signupCtrl.showPassword,
          isIcon: true,
          icon: IconButton(
            onPressed: () => signupCtrl.onShowPassword(),
            icon:
                signupCtrl.showPassword
                    ? const Icon(CupertinoIcons.eye_slash)
                    : const Icon(CupertinoIcons.eye),
            color: appColors.gray.withOpacity(0.6),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters long';
            }
            return null;
          },
          onChanged: (value) {
            signupCtrl.onMatchPassword(value);
          },
          onSaved: (value) {
            signupCtrl.onMatchPassword(value);
          },
        ).padding(top: Sizes.s10, bottom: Sizes.s18),
        TextWidgetCommon(text: "Confirm Password"),
        TextFiledCommon(
          hintText: 'Re-enter your password',
          keyboardType: TextInputType.text,
          controller: cnfPasswordController,
          obscureText: signupCtrl.showConfirmPassword,
          isIcon: true,
          icon: IconButton(
            onPressed: () => signupCtrl.onShowConfirmPassword(),
            icon:
                signupCtrl.showConfirmPassword
                    ? const Icon(CupertinoIcons.eye_slash)
                    : const Icon(CupertinoIcons.eye),
            color: appColors.gray.withOpacity(0.6),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please re-enter your password';
            }
            if (value != signupCtrl.password) {
              return 'Passwords do not match';
            }
            return null;
          },
        ).padding(top: Sizes.s10, bottom: Sizes.s18),

        /*Row(children: [
        CheckBoxCommon(
            isCheck: signupCtrl.isCheck,
            onTap: () => signupCtrl.isCheckBoxCheck(!signupCtrl.isCheck)),
        HSpace(Sizes.s8),
        TextWidgetCommon(text: appFonts.iAgreeToAllTerms)
      ]).paddingOnly(bottom: Sizes.s30),*/
      ],
    );
  }
}
