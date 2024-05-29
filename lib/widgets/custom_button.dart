import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.height,
      required this.width,
      required this.buttonColor,
      required this.textColor,
      this.borderColor,
      required this.buttonText,
      required this.onpressed});
  final double height;
  final double width;
  final Color buttonColor;
  final Color textColor;
  final Color? borderColor;
  final String buttonText;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onpressed();
      },
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 5,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: borderColor == null ? Colors.transparent : borderColor!,
            ),
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
