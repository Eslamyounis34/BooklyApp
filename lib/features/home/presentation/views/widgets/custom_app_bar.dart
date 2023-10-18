import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/core/utils/app_routing.dart';
import 'package:flutter_bookly_app/core/utils/assets.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55, bottom: 15),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouting.kSearch);
            },
            icon: Image.asset(AssetsData.search),
            iconSize: 20,
          )
        ],
      ),
    );
  }
}
