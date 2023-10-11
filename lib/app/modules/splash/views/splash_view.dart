import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/splashTop.png',
            fit: BoxFit.fitWidth,
            width: 390,
          ),
          Image.asset('assets/images/logo.png'),
          Image.asset(
            'assets/images/splashBottom.png',
            width: 390,
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    ));
  }
}
