
import 'package:flutter/material.dart';
import 'package:plant_ui/common/extension/widget_extension.dart';
import 'package:plant_ui/common/theme/scale.dart';
import 'package:plant_ui/config.dart';

class CheckBoxCommon extends StatelessWidget {
  final bool? isCheck;
  final GestureTapCallback? onTap;
  const CheckBoxCommon({super.key,this.isCheck = false,this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: Sizes.s20,
        width: Sizes.s20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isCheck == true
                ? appColors.green
                : appColors.gray.withOpacity(0.1),
            borderRadius: BorderRadius.circular(Sizes.s4),
            border: Border.all(color:isCheck == true
                ? appColors.trans
                : appColors.trans)),
        child: isCheck == true
            ? Icon(Icons.check,
            size: Sizes.s15,
            color: appColors.white)
            : null)
        .inkWell(onTap: onTap);
  }
}
