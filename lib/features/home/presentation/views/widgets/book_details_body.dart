import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';
import 'package:flutter_bookly_app/core/widgets/custom_button.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';

import 'book_actions.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const CustomDetailsAppBar(),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                    child: CustomBookListItem(
                      bookImageUrl: '',
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "The Jungle Book",
                    style: Styles.textStyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                      opacity: .7,
                      child: Text(
                        "Rudyard Kipling",
                        style: Styles.textStyle18
                            .copyWith(fontStyle: FontStyle.italic),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  const BookRating(
                    rating: 5,
                    count: 250,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: BookActions(),
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You can also like',
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: SimilarBooksListView(),
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
