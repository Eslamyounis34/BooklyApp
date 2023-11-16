import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/utils/app_routing.dart';
import 'package:flutter_bookly_app/core/widgets/custom_error.dart';
import 'package:flutter_bookly_app/core/widgets/custom_loading_alert.dart';
import 'package:flutter_bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:go_router/go_router.dart';

import 'custom_list_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouting.kBookDetails,
                        extra: state.books[index]);
                  },
                  child: CustomBookListItem(
                    bookImageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksError) {
          return CustomError(errMessage: state.errMsg);
        } else {
          return const CustomLoadingAlert();
        }
      },
    );
  }
}
