import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FIText extends StatelessWidget {
  String text;
  TextStyle? textStyle;
  TextAlign? textAlign;
  TextOverflow? textOverflow;
  int? maxLines;
  bool? softWrap;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  bool isRequired;

  FIText(
      {required this.text,
      this.textOverflow = TextOverflow.visible,
      this.maxLines,
      this.softWrap,
      this.textStyle,
      this.textAlign = TextAlign.start,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.isRequired = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isRequired
        ? RichText(
            overflow: textOverflow!,
            softWrap: softWrap ?? false,
            maxLines: maxLines,
            textAlign: textAlign!,
            text: TextSpan(
                text: text,
                style: textStyle ??
                    TextStyle(
                      fontSize: fontSize ?? 13,
                      fontWeight: fontWeight,
                      color: color,
                    ),
                children: [
                  TextSpan(
                      text: ' * ',
                      style: TextStyle(
                        fontSize: fontSize ?? 13,
                        fontWeight: fontWeight,
                        color: Colors.red,
                      ))
                ]),
          )
        : Text(
            text.tr,
            overflow: textOverflow,
            softWrap: softWrap,
            maxLines: maxLines,
            textAlign: textAlign,
            style: textStyle ??
                TextStyle(
                  fontSize: fontSize ?? 13,
                  fontWeight: fontWeight,
                  color: color,
                ),
          );
  }
}
