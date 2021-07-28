import 'package:flutter/material.dart';
import 'package:testing/utils/color.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final String initialValue;
  final Function(String) onTextChanged;
  final bool passwordVisible;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final TextInputType keyboardType;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;
  final int maxLines;
  final TextStyle hintStyle;
  final bool enabled;
  final int maxLength;

  const AppTextField({
    Key key,
    this.keyboardType,
    this.hintText,
    this.onTextChanged,
    this.controller,
    this.passwordVisible = true,
    this.suffixIcon,
    this.initialValue,
    this.validator,
    this.prefixIcon,
    this.maxLines = 1,
    this.hintStyle,
    this.enabled,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15,0,15,0),
      child: TextFormField(
        maxLength: maxLength,
        enabled: enabled,
        maxLines: maxLines,
        validator: validator,
        controller: controller,
        keyboardType: keyboardType != null ? keyboardType : TextInputType.text,
        obscureText: !passwordVisible,
        onChanged: (value) {
          if (onTextChanged != null) onTextChanged(value);
        },
        initialValue: initialValue,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorPrimary),
            borderRadius: BorderRadius.circular(2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorPrimary),
            borderRadius: BorderRadius.circular(2),
          ),
          filled: true,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: hintStyle,
          fillColor: Colors.white,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
