import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bookly_app/core/constants.dart';
import 'package:flutter_bookly_app/features/splash/presentation/views/spalch_screen.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarBrightness: Brightness.dark, // set status bar brightness

      statusBarIconBrightness: Brightness.light, // For Android (dark icons)
    ));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(backgroundColor: kPrimaryColor)),
      home: const SpalshScreen(),
    );
  }
}
