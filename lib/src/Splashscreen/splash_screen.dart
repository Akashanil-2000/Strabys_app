import 'package:animate_do/animate_do.dart';
import 'package:css_stranbys/src/Splashscreen/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Stack(children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: Align(alignment: Alignment.center, child: Image.asset('assets/images/css_logo.png', width: 240, fit: BoxFit.fill)),
            ).paddingSymmetric(vertical: 55),
            Hero(tag: 'globe', child: ZoomIn(child: Lottie.asset('assets/lottie/globe.json', repeat: true, height: 240, width: 100.w)))
          ])
        ]));
  }
}
