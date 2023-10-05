import 'package:flutter_bookly_app/features/home/presentation/views/books_home.dart';
import 'package:flutter_bookly_app/features/splash/presentation/views/spalch_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouting {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SpalshScreen(),
    ),
    GoRoute(
      path: '/booksHome',
      builder: (context, state) => const BooksHome(),
    )
  ]);
}
