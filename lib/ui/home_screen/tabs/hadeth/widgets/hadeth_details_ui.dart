import 'package:flutter/material.dart';
import 'package:islami/core/resources/data/hadeth_model.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';

class HadethDetailsUi extends StatelessWidget {
  final HadethModel hadeth;

  HadethDetailsUi({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, left: 8),
          child: Align(
            alignment: .topStart,
            child: Image.asset(AssetsManager.gold_left_corner),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 17),
          child: Align(
            alignment: .topCenter,
            child: Text(
              hadeth.title,
              textAlign: .center,
              style: TextStyle(
                color: ColorsManager.gold,
                fontWeight: .w700,
                fontSize: 20,
                fontFamily: 'Janna',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.3, right: 8),
          child: Align(
            alignment: .topEnd,
            child: Image.asset(AssetsManager.gold_right_corner),
          ),
        ),

        Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 80,
                  horizontal: 10,
                ),
                child: SingleChildScrollView(
                  child: Text(
                    hadeth.content,
                    textAlign: .center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: ColorsManager.gold,
                      fontSize: 20,
                      fontWeight: .w700,
                      fontFamily: 'Janna',
                      height: 2.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: .bottomStart,
          child: Row(
            children: [Expanded(child: Image.asset(AssetsManager.gold_mosque))],
          ),
        ),
      ],
    );
  }
}
