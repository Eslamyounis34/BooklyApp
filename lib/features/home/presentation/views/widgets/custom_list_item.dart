import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookListItem extends StatelessWidget {
  const CustomBookListItem({super.key, required this.bookImageUrl});

  final String bookImageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
            //width to hieght
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
              imageUrl: bookImageUrl,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              )),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
