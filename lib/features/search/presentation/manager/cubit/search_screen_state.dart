part of 'search_screen_cubit.dart';

class SearchScreenState extends Equatable {
  const SearchScreenState();

  @override
  List<Object> get props => [];
}

class SearchScreenInitial extends SearchScreenState {}

class SearchScreenLoading extends SearchScreenState {}

class SearchScreenSuccess extends SearchScreenState {
  final List<BookModel> books;

  const SearchScreenSuccess(this.books);
}

class SearchScreenError extends SearchScreenState {
  final String errMsg;

  const SearchScreenError(this.errMsg);
}
