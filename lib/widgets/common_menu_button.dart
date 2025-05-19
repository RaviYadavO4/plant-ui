
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_ui/common/assets/index.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/scale.dart';

import '../config.dart';

class CommonMenuButton extends StatelessWidget {
  final IconData? icon;
  final bool? isIcon;
  final bool? isBorder;
  final Color? color;
  final Color? iconColor;
  final ColorFilter? colorFilter;
  final BoxBorder? border;
  final String? iconImage;

  const CommonMenuButton(
      {super.key,
      this.icon,
      this.isIcon,
      this.color,
      this.iconColor,
      this.border,
      this.isBorder,
      this.iconImage,
      this.colorFilter});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(Insets.i8),
              decoration: BoxDecoration(
                  color: color ?? appColors.white,
                  border: Border.all(
                      color: appColors.radioGrayColor),
                  borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6)),
              child: isIcon == true
                  ? Icon(icon!,
                          size: Sizes.s18,
                          color: iconColor ?? appColors.darkText)
                      .center()
                  : Transform.flip(
                      flipX: false,
                      child: SvgPicture.asset(
                           iconImage ?? eSvgAssets.bell,
                          fit: BoxFit.fill,
                          colorFilter: colorFilter)),
                          );
  }
}
