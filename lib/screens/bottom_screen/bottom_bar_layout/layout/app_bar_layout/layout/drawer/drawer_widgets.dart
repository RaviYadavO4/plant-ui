import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:plant_ui/common/assets/index.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/providers/bottom_screen_provider/bottom_screen_provider.dart';
import 'package:plant_ui/widgets/switch_common.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';

import '../../../../../../../config.dart';

class DrawerWidgets {
  //drawer items list layout
  Widget drawerItemsLists(BuildContext context, MapEntry<int, dynamic> e,
          BottomScreenProvider bottomCtrl) =>
      ListTile(
        minVerticalPadding: 0,
        dense: true,
        horizontalTitleGap: Sizes.s15,
        leading: SvgPicture.asset(
          e.value["icon"],
          colorFilter: ColorFilter.mode(
              appColors.darkText, BlendMode.srcIn),
        ),
        title: TextWidgetCommon(
            text: e.value["title"],
            style: AppCss.latoMedium14
                .textColor(appColors.darkText)),
        onTap: () => //drawer index on taps screen
            bottomCtrl.drawerOnTap(e.key, context),
      ).padding(horizontal: Sizes.s15,vertical: Sizes.s3);

  //drawer divider, dark theme text, theme switch button layout
  Widget darkThemeLayout(context) => Column(children: [
        DottedLine(dashColor: appColors.lightText),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextWidgetCommon(text: 'Dark Theme')
              .paddingSymmetric(vertical: Sizes.s25),
          //common switch layout
          SwitchCommon(
              onToggle: (value) => true,
              value: true)
        ])
      ]).paddingSymmetric(horizontal: Sizes.s18);

  //drawer header layout
  Widget drawerHeaderLayout(context) {
  return SizedBox(height: Sizes.s210,
    child: DrawerHeader(margin: EdgeInsets.only(bottom: Sizes.s20),
        decoration: BoxDecoration(
            border: Border(
                bottom: Divider.createBorderSide(context,
                    color: appColors.dividerColor, width: 1)),
            color: appColors.lightBGColor),
        child: Column(children: [
          SvgPicture.asset(eSvgAssets.google,
              height: Sizes.s25,
              width: Sizes.s70)
         /* SvgPicture.asset(eSvgAssets.logo,
              fit: BoxFit.scaleDown, height: Sizes.s30)*/
              .padding(bottom: Sizes.s20),
          Stack(children: <Widget>[
            Transform.flip(flipX: false,
              child: Image.asset(eImageAssets.drawer,
                  fit: BoxFit.fill, width: MediaQuery.of(context).size.width),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextWidgetCommon(
                  text: 'Balance',
                  style: TextStyle(
                      color: appColors.white.withOpacity(0.7))),
              TextWidgetCommon(
                  text:'100.00',
                  style: AppCss.latoBold18
                      .textColor(appColors.white))
            ]).paddingSymmetric(horizontal: Sizes.s12, vertical: Sizes.s12)
          ])
        ])),
  );
  }
}
