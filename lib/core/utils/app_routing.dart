import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:flutter_bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/books_home.dart';
import 'package:flutter_bookly_app/features/search/presentation/views/search_view_screen.dart';
import 'package:flutter_bookly_app/features/splash/presentation/views/spalch_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouting {
  static const kHome = '/booksHome';
  static const kBookDetails = '/bookDetailsView';
  static const kSearch = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SpalshScreen(),
    ),
    GoRoute(
      path: kHome,
      builder: (context, state) => const BooksHome(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: BookDetailsView(bookModel: state.extra as BookModel),
      ),
    ),
    GoRoute(
      path: kSearch,
      builder: (context, state) => const SearchViewScreen(),
    )
  ]);
}
