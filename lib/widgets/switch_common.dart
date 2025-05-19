

//common switch layout

import 'package:flutter/cupertino.dart';
import 'package:plant_ui/config.dart';

class SwitchCommon extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool>? onToggle;

  const SwitchCommon({super.key, this.value, this.onToggle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 20,
      child: Transform.scale(
          scale: .7,
          child: CupertinoSwitch(
              autofocus: true,
              // activeTrackColor: appColors.primary,
              // trackColor: MaterialStatePropertyAll(
              //     appColors.gray.withOpacity(0.4)),
              activeColor: appColors.green,
              // inactiveThumbColor: appColors.gray,
              value: value!,
              onChanged: onToggle)),
    );
  }
}
