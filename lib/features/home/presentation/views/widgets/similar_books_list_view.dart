import 'package:flutter/cupertino.dart';

import 'custom_list_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .19,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookListItem(
            bookImageUrl: 'sdkflsdfks',
          );
        },
      ),
    );
  }
}
