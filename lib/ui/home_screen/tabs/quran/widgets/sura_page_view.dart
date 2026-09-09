import 'package:flutter/material.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/data/arabic_suras.dart';
import 'package:islami/core/resources/data/aya_number.dart';
import 'package:islami/core/resources/data/english_suras.dart';

class SuraPageView extends StatelessWidget{
  final int index;
  SuraPageView({
    required this.index
});
  final PageController controller = PageController(
    viewportFraction: 0.72,
  );
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      padEnds: false,
      controller: controller,
      itemCount: arabicQuranSuras.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.gold,
                shape: .rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      spacing: 5,
                      children: [
                        Text(englishQuranSuras[index],style: TextStyle(
                          fontSize: 24,
                          fontWeight: .w700,
                          color: ColorsManager.dark_grey
                        ),),
                        Text(arabicQuranSuras[index],style: TextStyle(
                            fontSize: 24,
                            fontWeight: .w700,
                            color: ColorsManager.dark_grey
                        ),),
                        Text("${ayaNumber[index]} Verses",style: TextStyle(
                            fontSize: 14,
                            fontWeight: .w700,
                            color: ColorsManager.dark_grey
                        ),),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Image.asset(AssetsManager.mostRecent,fit: BoxFit.contain,),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
    );
  }

}