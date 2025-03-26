import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';
import 'package:sizer/sizer.dart';

class FIOutLineButton extends StatefulWidget {
  VoidCallback? onPressed;
  String? text;
  TextStyle? textStyle;
  ButtonStyle? style;
  bool isDisable = false;
  bool showProgress = false;
  Color? btnColor;
  bool isBtnColor;
  double? width;
  double? maxWidth;
  double? height;

  FIOutLineButton(
      {this.text,
      this.onPressed,
      this.isDisable = false,
      this.showProgress = false,
      this.textStyle,
      this.style,
      this.btnColor,
      this.isBtnColor = false,
      this.width = 100 * 1,
      this.maxWidth = 100 * 1,
      this.height = 10 * 4.3,
      Key? key})
      : super(key: key);

  @override
  _FIOutLineButtonState createState() => _FIOutLineButtonState();
}

class _FIOutLineButtonState extends State<FIOutLineButton> {
  AppSettingsController _appSettingsController = Get.find<AppSettingsController>();

  var themeColor;

  @override
  void initState() {
    super.initState();
    themeColor = widget.isBtnColor ? widget.btnColor! : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return widget.text == 'save_as_draft'.tr
        ? Center(
            child: SizedBox(
                width: 40.w,
                child: ButtonTheme(
                    minWidth: widget.width!,
                    child: OutlinedButton(
                        onPressed: widget.isDisable ? null : widget.onPressed,
                        style: OutlinedButton.styleFrom(
                            backgroundColor: !widget.isDisable ? Colors.white : Colors.grey.shade300,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            side: widget.isDisable ? BorderSide.none : BorderSide(width: 1, color: themeColor)),
                        child: Container(
                            height: widget.height,
                            child: Center(
                                child: FIText(
                              text: widget.text.toString(),
                              textStyle: TextStyle(color: widget.isDisable ? Colors.grey : themeColor, fontWeight: FontWeight.w600, fontSize: 12),
                            )))))))
        : ButtonTheme(
            minWidth: widget.width!,
            child: OutlinedButton(
                onPressed: widget.isDisable ? null : widget.onPressed,
                style: OutlinedButton.styleFrom(
                    backgroundColor: !widget.isDisable ? Colors.white : Colors.grey.shade300,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    side: widget.isDisable ? BorderSide.none : BorderSide(width: 1, color: themeColor)),
                child: Container(
                    height: widget.height,
                    child: Center(
                        child: FIText(
                      text: widget.text.toString(),
                      textStyle: TextStyle(color: widget.isDisable ? Colors.grey : themeColor, fontWeight: FontWeight.w600, fontSize: 12),
                    )))));
  }
}
