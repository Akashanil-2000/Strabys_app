import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';

class FIScanBarcode extends StatelessWidget {
  const FIScanBarcode({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: 50.h,
            width: 100.w,
            child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                  SizedBox(width: 80.w, child: Lottie.asset("assets/lottie/scan_barcode.json")),
                  FIText(
                    text: title?.tr ?? '',
                    textStyle: FITextStyle.xsMBold,
                    textAlign: TextAlign.center,
                  ),
                ]).marginOnly(bottom: 50))));
  }
}
