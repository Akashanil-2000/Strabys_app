import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';

class FITextInput extends StatelessWidget {
  FITextInput(
      {this.labelText,

      this.labelTextStyle,
      this.hintText,
      this.validationMessage,
      this.inputFormatters,
      this.controller,
      this.initialValue,
      this.maxLength,
      this.isRequired = false,
      this.obscureText = false,
      this.readOnly = false,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.onTap,
      this.textInputType,
      this.suffixIconData,
      this.prefixIconData,
      this.style,
      this.focusNode,
      this.textAlign,
      this.inputBorderColor = Colors.white,
      this.maxLine = 1,
      this.showCharacterCounter = false,
      this.onChange,
      this.textInputLang, //used for text direction for arabic text
      this.bottomPadding = 20,
      this.backgroundFillColor = null,
      this.autoValidateMode = AutovalidateMode.onUserInteraction,
      Key? key});

  Key? key;
  String? labelText;
  String? hintText;
  IconData? suffixIconData;
  Widget? prefixIconData;
  TextInputType? textInputType;
  dynamic validationMessage;
  String? initialValue;
  Function(String?)? onSaved;
  Function(String?)? onChange;
  String? Function(String?)? validator;
  Function(String?)? onFieldSubmitted;
  VoidCallback? onTap;
  bool? isRequired;
  FocusNode? focusNode;
  int? maxLength;
  TextEditingController? controller;
  bool obscureText;


  bool readOnly;

  List<TextInputFormatter>? inputFormatters;
  TextStyle? style;
  TextStyle? labelTextStyle;
  TextAlign? textAlign;
  Color? inputBorderColor;
  int? maxLine;

  bool? showCharacterCounter;
  String? textInputLang;
  double? bottomPadding;
  Color? backgroundFillColor;
  AutovalidateMode? autoValidateMode;

  @override
  Widget build(BuildContext context) {
    InputDecoration? _inputDecorationWithIcon;
    InputDecoration? _inputDecorationWithOutIcon;
    _inputDecorationWithIcon = InputDecoration(
      prefixIcon: prefixIconData != null ? prefixIconData! : SizedBox.shrink(),
      focusColor: Colors.red,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      errorMaxLines: 3,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black, width: 1)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(10.0)),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: inputBorderColor!, width: 1), borderRadius: BorderRadius.circular(10.0)),
      filled: true,
      hintStyle: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 13,
      ),
      hintText: hintText != null ? hintText!.tr : null,
      floatingLabelStyle: TextStyle(
        fontSize: 13,
      ),
      labelStyle: labelTextStyle ?? TextStyle(color: Colors.grey.shade600, fontSize: 10),
      fillColor: Colors.grey,
      floatingLabelBehavior: FloatingLabelBehavior.always,
    );
    _inputDecorationWithOutIcon = InputDecoration(
      labelText: labelText,
      focusColor: Colors.red,
      suffixIconConstraints: isRequired == true ? BoxConstraints(minHeight: 40, minWidth: 15) : BoxConstraints(minHeight: 1, minWidth: 1),
      suffixIcon: isRequired == true ? Icon(Icons.star, color: Colors.red.shade600, size: 8).marginSymmetric(horizontal: 10) : SizedBox.shrink(),
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      errorMaxLines: 4,
      errorStyle: TextStyle(),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black, width: 1)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1), borderRadius: BorderRadius.circular(10.0)),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: inputBorderColor!, width: 1), borderRadius: BorderRadius.circular(10.0)),
      filled: true,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 13,
      ),
      hintText: hintText != null ? hintText!.tr : null,
      floatingLabelStyle: TextStyle(
        fontSize: 13,
      ),
      labelStyle: labelTextStyle ??
          TextStyle(
            color: Colors.grey,
            fontSize: 10,
          ),
      fillColor: backgroundFillColor != null ? backgroundFillColor : Colors.white,
      floatingLabelBehavior: FloatingLabelBehavior.always,
    );
    style = style ??
        TextStyle(
          fontSize: 20,
        );

    return Container(
        child: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding!),
            child: TextFormField(
                enableInteractiveSelection: true,
                key: key,
                maxLength: maxLength,
                focusNode: focusNode,
                maxLines: maxLine,
                controller: controller,
                initialValue: initialValue == "null" ? "" : initialValue,
                readOnly: readOnly,
                obscureText: obscureText,
                inputFormatters: inputFormatters,
                keyboardType: textInputType == null ? TextInputType.text : textInputType,
                decoration: prefixIconData != null ? _inputDecorationWithIcon : _inputDecorationWithOutIcon,
                onTap: onTap,
                onSaved: onSaved,
                style: style,
                textAlign: textAlign ?? TextAlign.start,
                textInputAction: TextInputAction.done,
                onChanged: onChange,
                onEditingComplete: () {
                  TextEditingController().clear();
                  FIKeyboardDismiss();
                },
                onFieldSubmitted: onFieldSubmitted,

                autovalidateMode: autoValidateMode)));
  }
}
