import 'package:flutter/material.dart';
import 'package:islami/ui/intro_screen/widgets/action_button.dart';
import 'package:islami/ui/intro_screen/widgets/dots_indicator.dart';

class IntroBottomBar extends StatelessWidget{
  final int index;
  final VoidCallback onBack;
  final VoidCallback onNext;
  IntroBottomBar({
    required this.index,
    required this.onBack,
    required this.onNext,
});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 90,
            child: index != 0 ?ActionButton(
              text: "Back",
              onClicked: onBack,
            )
                : const SizedBox(),
          ),

          DotsIndicator(
            index: index,
            onBack: onBack,
            onNext: onNext,
          ),

          ActionButton(
            text: "Next",
            onClicked: onNext,
          ),
        ],
      ),
    );
  }

}