import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bookly_app/core/utils/assets.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'custom_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        SizedBox(height: 0),
        CustomBookListItem()
      ],
    );
  }
}
