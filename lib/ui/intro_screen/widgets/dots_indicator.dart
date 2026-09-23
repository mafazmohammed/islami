import 'package:flutter/material.dart';

import '../../../core/resources/colors_manager.dart';

class DotsIndicator extends StatelessWidget{
  final int index;
  final VoidCallback onBack;
  final VoidCallback onNext;
  DotsIndicator({
    required this.index,
    required this.onBack,
    required this.onNext,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      List.generate(5, (i) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: i == index ? 18 : 7,
          height: 5,
          decoration: BoxDecoration(
            color: i == index
                ? ColorsManager.gold
                : ColorsManager.light_grey,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }

}