import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fi_text.dart';

class FIScaffold extends GetView<AppSettingsController> {
  Widget child;
  String? title;
  String? heading;
  double? titleSize;
  int? titleMaxLine;
  Widget customSuffixIcon;
  Widget? floatingWidget;
  Duration? animationDelay;
  bool isLeadingEnabled;
  bool isAppBarPinned;
  bool disableParentScroll;
  Function()? onback;
  Future<void> Function()? onRefresh;
  FIScaffold(
      {Key? key,
      required this.child,
      this.isLeadingEnabled = true,
      this.isAppBarPinned = true,
      this.disableParentScroll = false,
      this.heading,
      this.title,
      this.titleSize,
      this.titleMaxLine,
      this.animationDelay,
      this.onback,
      this.onRefresh,
      this.customSuffixIcon = const SizedBox.shrink(),
      this.floatingWidget = const SizedBox.shrink()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FIKeyboardDismiss(),
        child: Scaffold(
          floatingActionButton: floatingWidget,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          backgroundColor: Colors.grey.shade300,
          body: RefreshIndicator(
            color: Colors.red,
                onRefresh: onRefresh ??
                    () async {
                      return;
                    },
                child: RawScrollbar(
                  thumbColor: Colors.red.shade800,
                  thickness: 4,
                  radius: const Radius.circular(50),
                  thumbVisibility: true,
                  child: CustomScrollView(
                      physics: disableParentScroll == true
                          ? const NeverScrollableScrollPhysics()
                          : const BouncingScrollPhysics(),
                      slivers: <Widget>[
                        title == null
                            ? const SliverAppBar(
                                backgroundColor: Colors.black87,
                                stretch: true,
                                elevation: 0)
                            : SliverAppBar(
                                snap: false,
                                pinned: isAppBarPinned,
                                floating: true,
                                elevation: 0,
                                stretch: true,
                                flexibleSpace: SafeArea(
                                  child: FlexibleSpaceBar(
                                      background: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox.shrink(),
                                            const Expanded(child: SizedBox()),
                                            customSuffixIcon
                                                .paddingSymmetric(
                                                    horizontal: 20)
                                                .paddingOnly(bottom: 30)
                                          ]),
                                      titlePadding:
                                          const EdgeInsetsDirectional.only(
                                              start: 40, bottom: 16, end: 40),
                                      title:
                                          //automate scanning controller
                                          // Text(Get.currentRoute.toString()),
                                          FittedBox(
                                        child: heading != null
                                            ? RichText(
                                                text: TextSpan(
                                                    text: '$heading',
                                                    style: FITextStyle.xxxsMBold
                                                        .copyWith(
                                                      color: Colors.white,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              '\n${title ?? ""}',
                                                          style: FITextStyle
                                                              .xxsMBold
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white)),
                                                    ]),
                                              ).paddingOnly(left: 5)
                                            : FIText(
                                                    text: title ?? '',
                                                    maxLines: titleMaxLine ?? 2,
                                                    textOverflow:
                                                        TextOverflow.ellipsis,
                                                    textStyle: FITextStyle
                                                        .xsMBold
                                                        .copyWith(
                                                            color: Colors.white,
                                                            height: .2))
                                                .paddingSymmetric(
                                                    horizontal: 5, vertical: 5),
                                      )),
                                ), //FlexibleSpaceBar
                                expandedHeight: 60,
                                backgroundColor: Colors.black87,
                                leading: isLeadingEnabled == false
                                    ? const SizedBox.shrink()
                                    : IconButton(
                                            onPressed: () {
                                              Get.back();
                                              if (onback != null) {
                                                onback!();
                                              }
                                            },
                                            icon: const Icon(
                                                Icons
                                                    .arrow_back_ios_new_rounded,
                                                color: Colors.white))
                                        .paddingSymmetric(
                                            horizontal: 5)), //SliverAppBar

                        SliverList(
                            delegate:
                                SliverChildBuilderDelegate((context, index) {
                          return SingleChildScrollView(
                              physics: disableParentScroll == true
                                  ? const NeverScrollableScrollPhysics()
                                  : const BouncingScrollPhysics(),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    child,
                                    const SizedBox(height: 110)
                                  ]).paddingSymmetric(
                                  horizontal: 19, vertical: 5));
                        }, childCount: 1))
                      ] //<Widget>[]
                      ),
                ),
              )),
        );
  }
}
