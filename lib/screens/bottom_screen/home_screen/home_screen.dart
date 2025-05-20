import 'package:flutter/material.dart';
import 'package:plant_ui/config.dart';
import 'package:plant_ui/screens/bottom_screen/home_screen/layout/hs_body_layout/home_body_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.screenBg,
      body: SingleChildScrollView(child: HomeBodyLayout(),),
    );
  }
}