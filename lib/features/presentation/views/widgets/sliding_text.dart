import 'package:flutter/cupertino.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingnimation,
  });

  final Animation<Offset> slidingnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
