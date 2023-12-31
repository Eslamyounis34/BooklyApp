import 'package:dio/dio.dart';
import 'package:flutter_bookly_app/core/errors/failures.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bookly_app/core/utils/api_service.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fectchFeaturedBooks() async {
    try {
      var data = await apiService
          .getData('volumes?filtering=free-ebooks&q=subject:historical');
      List<BookModel> books = [];
      for (var item in data['items']) {
        // print(data['items']);
        if (item == null) {
          continue;
        } else {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.getData(
          'volumes?filtering=free-ebooks&sorting=newest&q=subject:art design');

      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fectchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.getData(
          'volumes?filtering=free-ebooks&sorting=relevance&q=subject:art design');

      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchQuery(
      {required String query}) async {
    try {
      var data = await apiService.getData(
          'volumes?filtering=free-ebooks&sorting=relevance&q=subject:$query');

      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
