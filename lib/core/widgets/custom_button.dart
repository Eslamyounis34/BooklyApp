import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.textColor,
      required this.borderRadius,
      required this.buttonText});

  final Color backGroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
        child: Text(
          buttonText,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ),
        onPressed: () {},
      ),
    );
  }
}
