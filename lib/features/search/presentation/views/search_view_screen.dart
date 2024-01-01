import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bookly_app/features/search/presentation/manager/cubit/search_screen_cubit.dart';
import 'package:flutter_bookly_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchViewScreen extends StatefulWidget {
  const SearchViewScreen({super.key});

  @override
  State<SearchViewScreen> createState() => _SearchViewScreenState();
}

class _SearchViewScreenState extends State<SearchViewScreen> {
  @override
  void initState() {
    BlocProvider.of<SearchScreenCubit>(context)
        .fetchSerachQueryBooks('History');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
