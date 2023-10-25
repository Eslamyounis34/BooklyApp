import 'package:flutter_bookly_app/core/errors/failures.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bookly_app/core/utils/api_service.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fectchFeaturedBooks() {
    // TODO: implement fectchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.getData(
          'volumes?filtering=free-ebooks&sorting=newest&q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }
}
