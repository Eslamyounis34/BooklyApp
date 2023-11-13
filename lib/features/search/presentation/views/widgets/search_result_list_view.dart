import 'package:flutter/cupertino.dart';

import '../../../../home/presentation/views/widgets/newest_book_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('data'),
            // child: NewestBookItem(
            //   bookImage: '',
            //   bookAuthor: '',
            //   bookName: '',
            // ),
          );
        });
  }
}
