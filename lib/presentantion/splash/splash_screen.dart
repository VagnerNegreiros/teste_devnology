import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/routes/app_routues.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3) , () => Get.offNamed(AppRoutes.home));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundDevnology,
      body: Center(
        child: Image.asset('assets/images/logo.png',
            width: 278.37,
            height: 44.0),
      ),
    );
  }
}