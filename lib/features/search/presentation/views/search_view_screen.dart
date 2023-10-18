import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchViewScreen extends StatelessWidget {
  const SearchViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
