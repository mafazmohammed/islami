import 'package:flutter/material.dart';
import 'package:islami/ui/home_screen/tabs/hadeth/widgets/hadeth_tab_background.dart';
import 'package:islami/ui/home_screen/tabs/hadeth/widgets/my_slider.dart';

import '../../../../../core/reusable_components/islami_logo.dart';

class HadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HadethTabBackground(),
        Positioned.fill(
          child: Column(
            children: [
              Align(alignment: .topCenter, child: IslamiLogo()),
              Expanded(child: MySlider()),
            ],
          ),
        ),
      ],
    );
  }
}
