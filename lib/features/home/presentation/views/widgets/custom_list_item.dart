import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookListItem extends StatelessWidget {
  const CustomBookListItem({super.key, required this.bookImageUrl});

  final String bookImageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: AspectRatio(
        //width to hieght
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: NetworkImage(bookImageUrl), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
