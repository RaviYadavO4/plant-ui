
import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/widgets/common_button_auth.dart';

import '../../../../common/theme/scale.dart';
import '../../../../widgets/sign_in_sign_up_rich_text.dart';

class SignUpWidgets {
//SignUp button Layout
  Widget signUpButtonLayout({VoidCallback? on_Tap}) =>
      CommonAuthButton(text: 'Sign up')
          .padding(vertical: Sizes.s10)
          .inkWell(
              onTap:on_Tap);

  // Signup already have an account rich text
  Widget signupRichTextLayout(BuildContext context) => SignInSingUpRichText(
        lightText:  'Already have an account ?',
        primaryText:  'Sign in',
      onTap: () => {},
      ).padding(bottom: Sizes.s20);
}
