import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookListItem extends StatelessWidget {
  const CustomBookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        //width to hieght
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
