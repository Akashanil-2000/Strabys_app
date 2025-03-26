import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/shared/widgets/fi_text.dart';

class FIIconButton extends StatefulWidget {
  double? width;
  double? height;
  IconData? iconName;
  Color? btnColor;
  Color? labelColor;
  Color? borderColor;
  Color? iconColor;
  String? label;
  VoidCallback? onTap;
  ButtonStyle? style;

  FIIconButton(
      {Key? key,
      this.width = 90 * 1.9,
      this.height = 45,
      this.iconName,
      this.style,
      this.iconColor,
      this.labelColor,
      this.label,
      this.btnColor,
      this.borderColor,
      this.onTap})
      : super(key: key);

  @override
  State<FIIconButton> createState() => _FIIconButtonState();
}

class _FIIconButtonState extends State<FIIconButton> {
  @override
  Widget build(BuildContext context) => Container(
      width: widget.width,
      height: widget.height,
      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: widget.onTap == null
              ? Colors.grey.shade300
              : widget.btnColor ?? Colors.transparent,
          border: Border.all(
              width: 1,
              color: widget.onTap == null
                  ? Colors.grey.shade300
                  : widget.borderColor != null
                      ? widget.borderColor!
                      : Colors.transparent),
          borderRadius: BorderRadius.circular(8)),
      child: ElevatedButton.icon(
          style: widget.style ??
              ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: widget.btnColor,
                  backgroundColor: widget.btnColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
          onPressed: widget.onTap,
          label: FIText(
              text: widget.label ?? '-',
              textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: widget.labelColor)),
          icon: Icon(widget.iconName!,
              color: widget.iconColor, textDirection: TextDirection.ltr)));
}
