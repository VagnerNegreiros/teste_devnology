import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/presentantion/splash/splash_screen.dart';
import 'package:teste_devnology/routes/app_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      title: 'Teste Devnology',
      getPages: AppScreens.routes,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}