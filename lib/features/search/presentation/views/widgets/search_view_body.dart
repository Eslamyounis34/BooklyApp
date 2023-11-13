import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:flutter_bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../home/presentation/views/widgets/newest_book_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 16,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 18,
          ),
          Text(
            'Result : ',
            style: Styles.textStyle18,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
