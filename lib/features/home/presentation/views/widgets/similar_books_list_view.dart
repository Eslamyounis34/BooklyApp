import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/widgets/custom_error.dart';
import 'package:flutter_bookly_app/core/widgets/custom_loading_alert.dart';
import 'package:flutter_bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';

import 'custom_list_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
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
        } else if (state is SimilarBooksError) {
          return CustomError(errMessage: state.errMsg);
        } else {
          return const CustomLoadingAlert();
        }
      },
    );
  }
}
