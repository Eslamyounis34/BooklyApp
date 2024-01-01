import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/book_model/book_model.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo_impl.dart';

part 'search_screen_state.dart';

class SearchScreenCubit extends Cubit<SearchScreenState> {
  SearchScreenCubit(this.homeRepo) : super(SearchScreenInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSerachQueryBooks(String searchQuery) async {
    emit(SearchScreenLoading());

    var result = await homeRepo.fetchSearchQuery(query: searchQuery);
    result.fold((failure) {
      emit(SearchScreenError(failure.errMessage));
      print(failure.errMessage.toString());
    }, (books) {
      print(books.toString());
      emit(SearchScreenSuccess(books));
    });
  }
}
