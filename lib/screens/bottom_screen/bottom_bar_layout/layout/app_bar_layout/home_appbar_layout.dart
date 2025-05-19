
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui/common/extension/text_style_extensions.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/app_css.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/widgets/common_menu_button.dart';
import 'package:plant_ui/widgets/text_widgets_common.dart';
import 'package:provider/provider.dart';

import '../../../../../common/assets/index.dart';
import '../../../../../providers/bottom_screen_provider/bottom_screen_provider.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GestureTapCallback? onTap, bellTap;

  const HomeAppBar({super.key, this.onTap, this.bellTap});

  @override
  Widget build(BuildContext context) {
    return Consumer< BottomScreenProvider>(
        builder: (context1, bottomCtrl,
            child) {
      return AppBar(
              toolbarHeight: Sizes.s57,
              elevation: 2,
              backgroundColor: bottomCtrl.currentTab == 1
                  ? appColors.lightBGColor
                  : appColors.screenBg,
              centerTitle: true,
              titleSpacing: 0,
              leadingWidth: Sizes.s80,
              leading: (bottomCtrl.currentTab == 0)
                  ? CommonMenuButton(
                          isIcon: false,
                          iconImage: eSvgAssets.menu,
                          colorFilter: ColorFilter.mode(
                              appColors.black,
                              BlendMode.srcIn))
                      .inkWell(onTap: onTap)
                      .padding(all: Insets.i9, horizontal: Insets.i22)
                  : Container(),
              title: (bottomCtrl.currentTab == 0)

                  ? SvgPicture.asset(eSvgAssets.google,
                  height: Sizes.s25,
                  width: Sizes.s70)
             /* SvgPicture.asset(eSvgAssets.logo,
                      height: Sizes.s25, width: Sizes.s70)*/
                  : bottomCtrl.currentTab == 1
                      ? TextWidgetCommon(
                          text: 'appFonts.cryptoWallet',
                          style: AppCss.latoSemiBold22
                              .textColor(appColors.darkText))
                      : bottomCtrl.currentTab == 2
                          ? TextWidgetCommon(
                              text: 'appFonts.insight',
                              style: AppCss.latoSemiBold22.textColor(
                                  appColors.darkText))
                          : TextWidgetCommon(
                              text: 'appFonts.profile',
                              style: AppCss.latoSemiBold22.textColor(
                                  appColors.darkText)),
              actions: [
            if (bottomCtrl.currentTab == 0 || bottomCtrl.currentTab == 1)
              const CommonMenuButton(isIcon: false)
                  .inkWell(onTap: bellTap)
                  .paddingSymmetric(horizontal: Sizes.s20),
            if (bottomCtrl.currentTab == 2)
              CommonMenuButton(
                      isIcon: false,
                      iconImage: eSvgAssets.facebook,
                      colorFilter: ColorFilter.mode(
                          appColors.darkText, BlendMode.srcIn))
                  .inkWell(
                      onTap: () => //insight screen customDialog layout
                         '')
                  .paddingSymmetric(horizontal: Sizes.s20)
          ]);
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
