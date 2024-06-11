import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../theme/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.keyboardType = TextInputType.none,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w * 0.03),
          borderSide: BorderSide(color: Palette.blackColor, width: w * 0.001),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w * 0.03),
          borderSide: BorderSide(color: Palette.blackColor, width: w * 0.001),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w * 0.03),
          borderSide: BorderSide(color: Palette.blackColor, width: w * 0.001),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w * 0.03),
          borderSide: BorderSide(color: Palette.blackColor, width: w * 0.001),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w * 0.03),
          borderSide: BorderSide(color: Palette.blackColor, width: w * 0.001),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w * 0.03),
          borderSide: BorderSide(color: Palette.blackColor, width: w * 0.001),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: 'Urbanist',
          fontSize: w * 0.044,
          color: Palette.blackColor,
        ),
      ),
      style: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: w * 0.044,
        fontWeight: FontWeight.w900,
        color: Palette.blackColor,
      ),
    );
  }
}
