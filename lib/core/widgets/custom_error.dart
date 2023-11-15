import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
