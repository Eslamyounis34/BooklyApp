import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_list_item.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.15),
          child: const CustomBookListItem(),
        )
      ],
    );
  }
}
