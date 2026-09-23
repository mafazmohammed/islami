import 'package:flutter/material.dart';
import 'package:islami/core/resources/data/quran_model.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';

class SuraDetailsUi extends StatelessWidget {
  final QuranModel quranModel;
  final String surahVerses;

  const SuraDetailsUi({
    super.key,
    required this.quranModel,
    required this.surahVerses,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 8),
              child: Align(
                alignment: .topStart,
                child: Image.asset(AssetsManager.gold_left_corner),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.3, right: 8),
              child: Align(
                alignment: .topEnd,
                child: Image.asset(AssetsManager.gold_right_corner),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 19, right: 19),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Align(
                  alignment: .topCenter,
                  child: Text(
                    quranModel.arabicName,
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

              Expanded(
                child: surahVerses.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                          color: ColorsManager.gold,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(vertical: 47),
                        child: SingleChildScrollView(
                          child: Text(
                            surahVerses,
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
