import 'package:flutter/material.dart';
import 'package:plant_ui/providers/auth_provider/sign_in_provider.dart';
import 'package:plant_ui/providers/auth_provider/sign_up_provider.dart';
import 'package:plant_ui/routes/index.dart';
import 'package:provider/provider.dart';

import 'providers/bottom_screen_provider/bottom_screen_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>SignInProvider()),
        ChangeNotifierProvider(create: (context)=>SignUpProvider()),
        ChangeNotifierProvider(create: (context)=>BottomScreenProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: routeName.splash,
        routes: appRoute.route
      ),
    );
  }
}

