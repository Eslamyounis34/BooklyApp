part of 'similar_books_cubit.dart';

class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksError extends SimilarBooksState {
  final String errMsg;
  const SimilarBooksError({required this.errMsg});
}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> similarBooks;
  const SimilarBooksSuccess({required this.similarBooks});
}
