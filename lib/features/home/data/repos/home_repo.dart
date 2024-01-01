import 'package:dartz/dartz.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:flutter_bookly_app/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fectchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fectchSimilarBooks(
      {required String category});

  Future<Either<Failure, List<BookModel>>> fetchSearchQuery(
      {required String query});
}
