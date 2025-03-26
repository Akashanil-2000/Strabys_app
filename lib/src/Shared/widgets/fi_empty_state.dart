import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
// import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';

import 'fi_button_primary.dart';

class FIEmptyState extends StatelessWidget {
  const FIEmptyState({Key? key, this.title, this.subtitle, this.description, this.isFeedbackButton = false}) : super(key: key);

  final String? title;
  final String? subtitle;
  final String? description;
  final bool? isFeedbackButton;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: 50.h,
            width: 100.h,
            child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(width: 35.h, child: Lottie.asset("assets/lottie/no-data.json")),
                  FIText(text: title?.tr ?? 'No Data Found'.tr, textStyle: FITextStyle.xsMBold),
                  const SizedBox(height: 5),
                  subtitle != null ? FIText(text: subtitle!, textStyle: const TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 16)) : const SizedBox.shrink(),
                  const SizedBox(height: 5),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: FIText(
                          text: description?.tr ?? '',
                          textAlign: TextAlign.center,
                          textStyle: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.grey))),
                  const SizedBox(height: 20),
                  if (isFeedbackButton == true) FIButtonPrimary(onPressed: () => Get.back(), text: "try_again".tr)
                ]).marginOnly(bottom: 50))));
  }
}
