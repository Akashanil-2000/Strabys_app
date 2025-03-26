import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'color_helper.dart';

showSnackBar(
    {String? title = 'Info',
    String? message = 'Error',
    Duration? duration,
    SnackPosition position = SnackPosition.TOP}) {
  if (Get.isSnackbarOpen) {
    return;
  }
  return Get.snackbar(title!.tr, message!.tr,
      snackStyle: SnackStyle.GROUNDED,
      snackPosition: position,
      icon: Icon(
        Icons.info_outline_rounded,
        color: Colors.red,
        size: 34,
      ),
      isDismissible: true,
      shouldIconPulse: true,
      backgroundColor: Colors.grey.shade300,
      duration: duration ?? const Duration(seconds: 2),
      colorText: Colors.red,
      maxWidth: Get.width,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(20),
      borderRadius: 0);
}

Future FIBottomSheet(
        {required Widget bottomSheetWidget,
        String? title,
        Widget? footerWidget,
          bool fullScreen = false,
        int? minusHeight = 100,
        isDismissible = true,
        Color? safeAreaBackgroundColor,
        double contentHorizontalPadding = 0.00,
        double contentVerticalPadding = 0.00,
        String titleBgHexColor = "#b5b375"}) =>
    Get.bottomSheet(
        SafeArea(
          bottom: false,
          child: Container(
            height: fullScreen ? Get.size.height : (Get.size.height - (minusHeight ?? 100)),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                color: safeAreaBackgroundColor ?? Colors.transparent),
            child: Column(children: [
              Container(
                  height: 5.h > 40 ? 5.h : 40,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      color: getColorFromHex(titleBgHexColor)),
                  child: Center(
                      child: FIText(
                          text: title!.tr,
                          textAlign: TextAlign.center,
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13)))),
              Expanded(
                  child: Container(
                      color: safeAreaBackgroundColor ?? Colors.white,
                      child: bottomSheetWidget.paddingSymmetric(
                          vertical: contentVerticalPadding,
                          horizontal: contentHorizontalPadding))),
              footerWidget ?? const SizedBox.shrink()
            ]),
          ),
        ),
        isDismissible: isDismissible,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        ignoreSafeArea: false,
        barrierColor: Colors.black.withOpacity(.5),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        enableDrag: true);

FIKeyboardDismiss() => FocusManager.instance.primaryFocus!.unfocus();
