import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.fectchSimilarBooks(category: category);

    result.fold((failure) {
      emit(SimilarBooksError(errMsg: failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(similarBooks: books));
    });
  }
}
