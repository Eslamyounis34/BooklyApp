import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
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
            onButtonPressed: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              print('URL:$uri');
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            textColor: Colors.white,
            backGroundColor: Color(0xffEF8262),
            buttonText: "Free Preview",
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        )
      ],
    );
  }
}
