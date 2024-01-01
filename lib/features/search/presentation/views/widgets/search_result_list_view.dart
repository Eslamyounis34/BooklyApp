import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/widgets/custom_error.dart';
import 'package:flutter_bookly_app/core/widgets/custom_loading_alert.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter_bookly_app/features/search/presentation/manager/cubit/search_screen_cubit.dart';

import '../../../../home/presentation/views/widgets/newest_book_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchScreenCubit, SearchScreenState>(
      builder: (context, state) {
        if (state is SearchScreenSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                var book = state.books[index];

                return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: NewestBookItem(
                      bookModel: book,
                    ));
              });
        } else if (state is SearchScreenError) {
          return CustomError(errMessage: state.errMsg);
        } else if (state is SearchScreenLoading) {
          return const CustomLoadingAlert();
        }
        return Container();
      },
    );
  }
}
