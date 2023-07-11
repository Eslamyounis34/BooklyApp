import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/core/utils/assets.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';

import '../../../../../core/constants.dart';
import 'custom_list_item.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: mediumTitle,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 16),
          BesTSellerListItem()
        ],
      ),
    );
  }
}

class BesTSellerListItem extends StatelessWidget {
  const BesTSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            //width to hieght
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.testImage),
                      fit: BoxFit.fill)),
            ),
          ),
          Column(
            children: [Text("Harry Potter and the golbet of fire")],
          )
        ],
      ),
    );
  }
}
