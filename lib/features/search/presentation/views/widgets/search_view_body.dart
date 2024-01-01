import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:flutter_bookly_app/features/search/presentation/manager/cubit/search_screen_cubit.dart';
import 'package:flutter_bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../home/presentation/views/widgets/newest_book_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String? searchQuery;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomSearchTextField(
            onChanged: (value) {
              searchQuery = value;
            },
            onPressed: () {
              search(context);
            },
          ),
          const SizedBox(
            height: 18,
          ),
          const Text(
            'Result : ',
            style: Styles.textStyle18,
          ),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }

  void search(BuildContext context) {
    BlocProvider.of<SearchScreenCubit>(context)
        .fetchSerachQueryBooks(searchQuery!);
  }
}
