import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/constants.dart';
import 'package:flutter_bookly_app/features/presentation/views/spalch_screen.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SpalshScreen(),
    );
  }
}
