import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/ui/home_screen/tabs/sebha/widgets/sebha_counter.dart';
import 'package:islami/ui/home_screen/tabs/sebha/widgets/sebha_tab_background.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/reusable_components/islami_logo.dart';

class SebhaTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SebhaTabBackground(),
        Column(
          children: [
            Align(alignment:.topCenter,child: IslamiLogo()),
            const SizedBox(height: 16,),
            Align(
              alignment: .topCenter,
              child: Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: ColorsManager.whiteColor,
                fontFamily: 'Janna'
              ),),
            ),
            const SizedBox(height: 16,),
            Container(
              padding: .all(8),
                width: 379,
                child: SebhaCounter()),
          ],
        ),
      ],
    );
  }
}