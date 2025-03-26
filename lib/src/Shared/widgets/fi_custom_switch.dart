import 'package:css_stranbys/src/shared/util/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'fi_text.dart';
import 'package:sizer/sizer.dart';

class FICustomSwitch extends StatelessWidget {
  FICustomSwitch(
      {Key? key,
      this.value,
      this.selectionColor,
      this.backgroundColor,
      this.onChanged,
      this.yesCount,
      this.noCount,
      this.labelForYesButton,
      this.labelForNoButton,
      this.title,
      this.buttonHeight = 45.00,
      this.buttonWidth,
      this.buttonBorderRadius = 5.00,
      this.validationMessage})
      : super(key: key);
  final Color? selectionColor;
  final Color? backgroundColor;

  final int? yesCount;
  final int? noCount;
  final double buttonHeight;
  final double? buttonWidth;
  final double buttonBorderRadius;

  final String? labelForYesButton;
  final String? labelForNoButton;
  final bool? value;

  final String? title;
  final String? validationMessage;
  void Function(dynamic)? onChanged;

  RxString selectedValue = ''.obs;
  TextEditingController validatorController = TextEditingController();
  AppSettingsController _appSettingsController = Get.find<AppSettingsController>();

  @override
  Widget build(BuildContext context) {
    if (value != null) {
      selectedValue.value = value.toString();
      validatorController.text = selectedValue.value;
    }

    return Obx(() => Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          if (title != null)
            Row(children: [
              Expanded(
                child: FIText(text: title ?? '', maxLines: 2, textAlign: TextAlign.start, textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis)
                    .marginOnly(bottom: 7),
              ),
            ]).paddingAll(5),
          Stack(children: [
            SizedBox(
                width: 75.w,
                child: TextFormField(
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  readOnly: true,
                  decoration: const InputDecoration(
                      focusColor: Colors.transparent,
                      suffixIconConstraints: BoxConstraints(minHeight: 1, minWidth: 1),
                      suffixIcon: SizedBox.shrink(),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      errorMaxLines: 2,
                      border: InputBorder.none,
                      focusedBorder: null,
                      enabledBorder: null,
                      filled: true,
                      fillColor: Colors.transparent,
                      floatingLabelBehavior: FloatingLabelBehavior.auto),
                  style: const TextStyle(color: Colors.transparent, fontSize: 0),
                  textAlign: TextAlign.start,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: () => FIKeyboardDismiss(),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: validatorController,
                )),
            Container(
                height: buttonHeight,
                width: buttonWidth ?? 100.w,
                decoration: BoxDecoration(color: backgroundColor ?? Colors.grey.shade200, borderRadius: BorderRadius.circular(buttonBorderRadius)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            selectedValue.value = 'true';
                            validatorController.text = 'true';
                            onChanged != null ? onChanged!(true) : null;
                          },
                          child: Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: selectedValue.value == 'true' ? Colors.red : Colors.grey.shade200, borderRadius: BorderRadius.circular(buttonBorderRadius)),
                                  child: Center(
                                      child: FIText(
                                              text: labelForYesButton?.tr ?? 'Yes'.tr,
                                              maxLines: 2,
                                              textStyle:
                                                  FITextStyle.xxxsMBold.copyWith(height: 1.3, color: (selectedValue.value == 'true' ? Colors.white : Colors.black54)),
                                              textAlign: TextAlign.center,
                                              textOverflow: TextOverflow.ellipsis)
                                          .paddingSymmetric(horizontal: 5))),
                              if (yesCount != null)
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    yesCount.toString() ?? '',
                                    style: FITextStyle.xsMBold.copyWith(color: Colors.white),
                                  ),
                                ).paddingAll(3).paddingOnly(left: 5)
                            ],
                          ))),
                  if (selectedValue.value == '') ...[Container(width: 1, color: Colors.grey.shade900)],
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            selectedValue.value = 'false';
                            validatorController.text = 'false';
                            onChanged != null ? onChanged!(false) : null;
                          },
                          child: Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: selectedValue.value == 'false' ? Colors.red : Colors.grey.shade200, borderRadius: BorderRadius.circular(buttonBorderRadius)),
                                  child: Center(
                                      child: FIText(
                                              text: labelForNoButton?.tr ?? 'No'.tr,
                                              maxLines: 2,
                                              textStyle: FITextStyle.xxxsMBold.copyWith(
                                                  // fontWeight: FontWeight.w400,
                                                  height: 1.3,
                                                  color: (selectedValue.value == 'false' ? Colors.white : Colors.black54)),
                                              textAlign: TextAlign.center,
                                              textOverflow: TextOverflow.ellipsis)
                                          .paddingSymmetric(horizontal: 5))),
                              if (noCount != null)
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    noCount.toString() ?? '',
                                    style: FITextStyle.xsMBold.copyWith(color: Colors.white),
                                  ),
                                ).paddingAll(3).paddingOnly(left: 5)
                            ],
                          )))
                ]))
          ]).paddingOnly(bottom: 20)
        ]));
  }
}
