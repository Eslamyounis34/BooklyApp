import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key, required this.bookUrl});

  final String bookUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
          iconSize: 31,
          color: Colors.white,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Share.share('$bookUrl', subject: 'Preview This Book!');
          },
          icon: const Icon(Icons.share_sharp),
          iconSize: 25,
          color: Colors.white,
        )
      ],
    );
  }
}
