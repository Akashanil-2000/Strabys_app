import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'fi_text.dart';

class FIButtonPrimary extends StatelessWidget {
  FIButtonPrimary({
    Key? key,
    this.onPressed,
    this.text,
    this.textStyle,
    this.style,
    this.isDisable = false,
    this.showProgress = false,
    this.btnColor,
    this.isBtnColor = false,
    this.width,
    this.height,
  }) : super(key: key);

  VoidCallback? onPressed;
  String? text;
  TextStyle? textStyle;
  ButtonStyle? style;
  bool isDisable;

  bool showProgress;
  Color? btnColor;
  bool isBtnColor;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) => SizedBox(
      width: width,
      height: 45,
      child: ElevatedButton(
          style: style ??
              ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: btnColor != null && isBtnColor ? btnColor : Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  textStyle: TextStyle(overflow: TextOverflow.ellipsis)),
          onPressed: !showProgress ? onPressed : null,
          child: Row(mainAxisAlignment: showProgress ? MainAxisAlignment.spaceAround : MainAxisAlignment.center, children: [
            showProgress
                ? Padding(
                    padding: const EdgeInsets.all(8.0), child: Container(width: 20, height: 20, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)))
                : SizedBox.shrink(),
            !showProgress
                ? FIText(
                    text: text != null ? text!.tr : '  ',
                    textStyle: textStyle ?? TextStyle(fontSize: 13.5, fontWeight: FontWeight.w500),
                  )
                : FIText(text: "loading", textStyle: textStyle ?? TextStyle(fontSize: 13.5, fontWeight: FontWeight.w500))
          ])));
}
