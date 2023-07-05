import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookListItem extends StatelessWidget {
  const CustomBookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        //width to hieght
        aspectRatio: 2.6 / 4,
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
