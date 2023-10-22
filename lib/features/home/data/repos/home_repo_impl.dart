import 'package:flutter_bookly_app/core/errors/failures.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fectchFeaturedBooks() {
    // TODO: implement fectchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }
}
