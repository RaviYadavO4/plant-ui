import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';

LinearGradient gradientColor(BuildContext context,
    {AlignmentGeometry? begin, AlignmentGeometry? end}) {
  return LinearGradient(
      colors: [
        appColors.green,
        appColors.gradient,
      ],
      begin: begin ?? Alignment.bottomCenter,
      end: end ?? Alignment.topCenter,
      stops: const [0.0, 15.0],
      tileMode: TileMode.decal);
}

ShapeDecoration receiverBox(context) => ShapeDecoration(
    gradient: LinearGradient(colors: [
      appColors.lightText.withOpacity(0.1),
      appColors.lightText.withOpacity(0.1)
    ]),
    shape: SmoothRectangleBorder(
        borderRadius:
            SmoothBorderRadius(cornerRadius: 10, cornerSmoothing: 1)));

RadialGradient radialGradient(BuildContext context) {
  return RadialGradient(colors: [
    appColors.green,
    appColors.gradient,
  ]);
}

LinearGradient gradientColorChange(BuildContext context,
    {AlignmentGeometry? begin,
    AlignmentGeometry? end,
    Color? firstColor,
    Color? secColor}) {
  return LinearGradient(
      colors: [
        firstColor ?? appColors.trans,
        secColor ?? appColors.trans,
      ],
      begin: begin ?? Alignment.bottomCenter,
      end: end ?? Alignment.topCenter,
      stops: const [0.0, 15.0],
      tileMode: TileMode.decal);
}
