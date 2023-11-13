import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/widgets/custom_error.dart';
import 'package:flutter_bookly_app/core/widgets/custom_loading_alert.dart';
import 'package:flutter_bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

import 'newest_book_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                var book = state.books[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: NewestBookItem(
                    bookModel: book,
                  ),
                );
              });
        } else if (state is NewestBooksError) {
          return CustomError(errMessage: state.errMsg);
        } else {
          return const CustomLoadingAlert();
        }
      },
    );
  }
}
