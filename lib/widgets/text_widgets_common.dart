

import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/config.dart';

class TextWidgetCommon extends StatelessWidget {
  const TextWidgetCommon(
      {super.key, this.text, this.textAlign, this.style, this.color,this.overflow});

  final String? text;
  final TextAlign? textAlign;
  final TextStyle? style;
  final Color? color;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(overflow: overflow,
      text??"",
      textAlign: textAlign ?? TextAlign.start,
      style: style ??
          AppCss.latoMedium16
              .textColor(color ?? appColors.darkText).textHeight(1.2).textDecoration(TextDecoration.none),
    );
  }
}
