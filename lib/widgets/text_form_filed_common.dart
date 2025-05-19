
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/config.dart';

import '../common/theme/scale.dart';

class TextFiledCommon extends StatelessWidget {
  final  GestureTapCallback? onTap;
  final BorderRadius? borderRadius;
  final BorderRadius? enabledBorder;
  final BorderSide? borderSide;
  final String? hintText;
  final Color? color;
  final double? width;
  final String? imageIcon;
  final TextEditingController? controller;
  final TextStyle? style;
  final IconButton? icon;
  final bool? isIcon;
  final bool? isPerFixIcon;
  final FormFieldValidator? validator;
  final TextInputType? keyboardType;
  final TextCapitalization?  textCapitalization;
  final int? maxLength;
  final bool obscureText;
  final FormFieldSetter? onSaved;
  final bool readOnly;

  final ValueChanged<String>? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines = 1;

  const TextFiledCommon(
      {super.key,
      this.onTap,
      this.borderRadius,
      this.borderSide,
      this.enabledBorder,
      this.hintText,
      this.color,
      this.width,
      this.controller,
      this.style,
      this.icon,
      this.isIcon,
      this.validator,
      this.keyboardType,
      this.textCapitalization = TextCapitalization.none,
      this.maxLength,
      this.obscureText = false,
      this.readOnly = false,
      this.onSaved,
      this.onChanged,
      this.imageIcon,
      this.prefixIcon,
      this.isPerFixIcon = false,
      this.suffixIcon,
      this.focusNode,
      this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      onTap: onTap,
      readOnly: readOnly,
      cursorOpacityAnimates: false,
      focusNode: focusNode,
      style: AppCss.latoRegular14,
      scrollPadding: EdgeInsets.zero,
      validator: validator,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization!,
      maxLength: maxLength,
      controller: controller,
      obscureText: obscureText,
      minLines: 1,
      maxLines: maxLines ?? 1,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(isDense: true,
        filled: true,
        contentPadding:
            contentPadding ?? EdgeInsets.symmetric(horizontal: Sizes.s15),
        focusedBorder: OutlineInputBorder(
            borderRadius:
                borderRadius ?? SmoothBorderRadius(cornerRadius: Sizes.s6),
            borderSide: borderSide ??
                BorderSide(
                    width: 2,
                    color: color ?? appColors.trans)),
        fillColor: color ?? appColors.gray.withOpacity(0.1),
        border: OutlineInputBorder(
            borderRadius:
                borderRadius ?? SmoothBorderRadius(cornerRadius: Sizes.s6),
            borderSide: borderSide ??
                BorderSide(
                    color: appColors.trans, width: Sizes.s2)),
        hintText:  hintText,
        hintStyle: style ??
            AppCss.latoMedium14
                .textColor(color ?? appColors.lightText),
        enabledBorder: OutlineInputBorder(
            borderRadius:
                enabledBorder ?? SmoothBorderRadius(cornerRadius: Sizes.s6),
            borderSide: BorderSide(
                width: Sizes.s2, color: appColors.trans)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon ??
            (isIcon == true
                ? icon
                : SvgPicture.asset("$imageIcon",
                    fit: BoxFit.scaleDown,
                    height: Sizes.s24,
                    width: Sizes.s24)),
      ),
    );
  }
}
