import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'dart:math' as math;
import 'fi_text.dart';

class FIScaffoldWithPagination extends GetView<AppSettingsController> {
  Widget child;
  String? title;
  double? titleSize;
  int? titleMaxLine;
  bool isDarkTitle;
  Widget customSuffixIcon;
  Duration? animationDelay;
  bool isLeadingEnabled;
  bool isAppBarPinned;
  FIScaffoldWithPagination(
      {Key? key,
      required this.child,
      this.isLeadingEnabled = true,
      this.isAppBarPinned = true,
      this.isDarkTitle = false,
      this.title,
      this.titleSize,
      this.titleMaxLine,
      this.animationDelay,
      this.customSuffixIcon = const SizedBox.shrink()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
                snap: false,
                pinned: isAppBarPinned,
                floating: true,
                elevation: 0,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [const SizedBox.shrink(), const Expanded(child: SizedBox()), customSuffixIcon.paddingSymmetric(horizontal: 25, vertical: 10)]),
                    titlePadding: const EdgeInsetsDirectional.only(start: 40, bottom: 16, end: 40),
                    title: FittedBox(
                        child: FIText(
                                text: title ?? '',
                                maxLines: titleMaxLine ?? 1,
                                textOverflow: TextOverflow.ellipsis,
                                textStyle: FITextStyle.xsMBold.copyWith(color: isDarkTitle == true ? Colors.black54 : Colors.white, height: .2))
                            .paddingSymmetric(horizontal: 5, vertical: 5))), //FlexibleSpaceBar
                expandedHeight: 90,
                backgroundColor: isDarkTitle ? Colors.grey.shade200 : Colors.red,
                leading: isLeadingEnabled == false
                    ? const SizedBox.shrink()
                    : IconButton(
                            onPressed: () => Get.back(),
                            icon: controller.currentLanguage.value == 'ar'
                                ? Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(math.pi),
                                    child: Icon(Icons.arrow_back_ios_new_rounded, color: isDarkTitle ? Colors.black54 : Colors.white))
                                : Icon(Icons.arrow_back_ios_new_rounded, color: isDarkTitle ? Colors.black54 : Colors.white))
                        .paddingSymmetric(horizontal: 5))
          ];
        },
        body: Stack(
          children: [Container(color: isDarkTitle == true ? Colors.grey.shade200 : Colors.red, height: 30), child.paddingSymmetric(horizontal: 19)],
        ).paddingOnly(bottom: 80));
  }
}
