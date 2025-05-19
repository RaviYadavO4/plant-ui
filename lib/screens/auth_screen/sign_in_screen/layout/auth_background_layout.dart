import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/spacing.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';

class AuthBackgroundLayout extends StatelessWidget {
  final Widget? child;
  final String? topText1;
  final String? topText2;
  final String? topImage;
  final String? text;
  final double? height;
  final double? right;
  final double? width;
  final double? bottom;
  final double? top;
  final bool? isImage;
  final bool? isText;
  final AlignmentGeometry? alignment;

  const AuthBackgroundLayout({
    super.key,
    this.child,
    this.topText1,
    this.topText2,
    this.topImage,
    this.height,
    this.right,
    this.bottom,
    this.width,
    this.isImage,
    this.top,
    this.alignment,
    this.isText,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: appColors.white
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height:  MediaQuery.of(context).size.height * 0.68,
                    decoration: BoxDecoration(
                      color: appColors.lightGreen,
                      borderRadius: SmoothBorderRadius.vertical(
                        top: SmoothRadius(cornerRadius: 20, cornerSmoothing: 2),
                      ),
                    ),
                    child: child!.paddingSymmetric(horizontal: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                HSpace(20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.arrow_back_rounded, color: appColors.green),
                ).inkWell(onTap: () => Navigator.pop(context)).padding(top: 50),
                if (isText == true)
                  Row(
                    children: [
                      HSpace(20),
                      TextWidgetCommon(
                        text: text,
                        style: AppCss.latoMedium14.textColor(appColors.white),
                      ).padding(top: Sizes.s50),
                    ],
                  ),
              ],
            ),
            if (isText != true)
              Row(
                children: [
                  HSpace(Sizes.s20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetCommon(
                        text: topText1!,
                        style: AppCss.latoSemiBold22.textColor(appColors.green),
                      ).padding(bottom: Sizes.s6),
                      TextWidgetCommon(
                        text: topText2!,
                        style: AppCss.latoLight16.textColor(appColors.green),
                      ),
                    ],
                  ).padding(top: Sizes.s70),
                ],
              ),
          ],
        ),
        if (isImage == true)
          Padding(
            padding: EdgeInsets.only(
              top: top ?? Sizes.s50,
              right: Sizes.s12,
              left: Sizes.s0,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Transform.flip(
                flipX: false,
                child: SizedBox(
                  height: height ?? Sizes.s225,
                  width: width,
                  child: Image(image: AssetImage(topImage ?? "")),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
