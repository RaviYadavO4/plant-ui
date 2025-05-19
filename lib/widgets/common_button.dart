import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_ui/common/extension/spacing.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';

class CommonButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? left;
  final double? bottom;
  final double? right;
  final Color? color;
  final Color? textColor;
  final String? text;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final String? image;

  const CommonButton({
    super.key,
    this.height,
    this.width,
    this.color,
    this.text,
    this.textColor,
    this.margin,
    this.borderRadius,
    this.left,
    this.right,
    this.bottom,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Container(
              height: height ?? Sizes.s46,
              margin: margin ??
                  EdgeInsets.only(
                      left: left ?? 0, right: right ?? 0, bottom: bottom ?? 0),
              decoration: BoxDecoration(
                  borderRadius: borderRadius ??
                      SmoothBorderRadius(cornerRadius: Sizes.s8),
                  color: color),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(image!),
                HSpace(Sizes.s8),
                TextWidgetCommon(
                        text: text!,
                        style: AppCss.latoSemiBold16.textColor(
                            textColor ?? appColors.lightText))
                    .center()
              ])))
    ]);
  }
}
