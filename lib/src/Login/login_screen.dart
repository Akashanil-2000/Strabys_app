import 'package:animate_do/animate_do.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends GetView<AppSettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35.h,
                  child: ZoomIn(child: Lottie.asset('assets/lottie/login.json', repeat: true, height: 240, width: 100.w)),
                ),
                if (Get.find<AppSettingsController>().showCheckInternet.isTrue)
                  ...[]
                else ...[
                  TextFormField(
                          style: FITextStyle.xxxs.copyWith(fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.loginEmailCtrl,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'Required User Name';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelStyle: FITextStyle.xxxsMBold,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
                              suffixIcon: const Icon(Icons.arrow_forward_ios_rounded, size: 23, color: Colors.transparent),
                              hintText: 'Username'.tr,
                              hintStyle: FITextStyle.xxxs.copyWith(color: Colors.grey.shade800),
                              errorStyle: FITextStyle.xxxs.copyWith(color: Colors.white),
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.blue, width: 3)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.black54, width: 3)),
                              floatingLabelBehavior: FloatingLabelBehavior.auto))
                      .paddingSymmetric(vertical: 5, horizontal: 25),
                  TextFormField(
                          style: FITextStyle.xxxs.copyWith(fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.text,
                          controller: controller.loginPasswordCtrl,
                          obscureText: controller.showPassword.isFalse,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'Required Password';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelStyle: FITextStyle.xxxsMBold,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
                              suffixIcon: IconButton(
                                  icon: Icon(controller.showPassword.isTrue ? Icons.visibility : Icons.visibility_off_rounded, size: 23, color: Colors.grey),
                                  onPressed: () {
                                    controller.showPassword(!controller.showPassword.value);
                                  }),
                              hintText: 'Password'.tr,
                              hintStyle: FITextStyle.xxxs.copyWith(color: Colors.grey.shade800),
                              errorStyle: FITextStyle.xxxs.copyWith(color: Colors.white),
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.blue, width: 3)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.black54, width: 3)),
                              floatingLabelBehavior: FloatingLabelBehavior.auto))
                      .paddingSymmetric(vertical: 5, horizontal: 25),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Material(
                          color: Colors.red,
                          child: InkWell(
                              splashColor: Colors.red,
                              onTap: () {
                                controller.authenticate();
                              },
                              child: Center(
                                  child: SizedBox(
                                      height: 55,
                                      width: 100.w,
                                      child: Center(
                                          child: FIText(
                                        text: 'Log In ',
                                        textStyle: const TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
                                      ))))))).paddingSymmetric(horizontal: 25, vertical: 35),
                ],
                Hero(tag: 'globe', child: Lottie.asset('assets/lottie/globe.json', repeat: true, height: 240, width: 100.w))
              ],
            )),
      ),
    );
  }
}
