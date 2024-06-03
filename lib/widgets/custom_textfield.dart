import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.prefixIcon});

  final TextEditingController controller;
  final String hintText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.045,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(25),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle:
              TextStyle(fontSize: getResponsiveExtraLargeFontSize(context)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              color: klightGreen,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
