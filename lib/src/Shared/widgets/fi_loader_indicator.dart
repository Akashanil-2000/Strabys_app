import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class FILoaderIndicator extends StatefulWidget {
  const FILoaderIndicator({Key? key}) : super(key: key);

  @override
  _FILoaderIndicatorState createState() => _FILoaderIndicatorState();
}

class _FILoaderIndicatorState extends State<FILoaderIndicator> {
  bool _visible = true;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
      Future.delayed(Duration(milliseconds: 400), () {
        _visible = !_visible;
      });
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 55,
            padding: EdgeInsets.all(10),
            child: LoadingAnimationWidget.staggeredDotsWave(
              size: 40,
              color: Colors.red,
            ),
          ),
        ),
      ).paddingSymmetric(vertical: 20),
    );
  }

  Widget Loader() => ZoomIn(
        child: Lottie.asset(
          'assets/lottie/loading.json',
          repeat: true,
          height: 100.h,
          width: 100.w,
        ),
      );

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }
}
