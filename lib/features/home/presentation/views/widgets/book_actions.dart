import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomButton(
            textColor: Colors.black,
            backGroundColor: Colors.white,
            buttonText: "19.99€",
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomButton(
            textColor: Colors.white,
            backGroundColor: Color(0xffEF8262),
            buttonText: "Free Preview",
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        )
      ],
    );
  }
}
