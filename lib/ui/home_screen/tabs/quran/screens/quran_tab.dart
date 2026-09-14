import 'package:flutter/material.dart';
import 'package:islami/ui/home_screen/tabs/quran/widgets/most_recently_list.dart';
import 'package:islami/ui/home_screen/tabs/quran/widgets/suras_list.dart';

import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/strings_manager.dart';
import '../../../../../core/reusable_components/text_bar.dart';
import '../widgets/background.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              spacing: 10,
              children: [
                const SizedBox(height: 190),
                TextBar(title: "Sura Name"),
                const SizedBox(height: 5),
                Align(
                  alignment: .topStart,
                  child: Text(
                    StringsManager.mostRecently,
                    style: TextStyle(
                      color: ColorsManager.whiteColor,
                      fontSize: 16,
                      fontWeight: .w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: .topStart,
                  child: SizedBox(
                    height: 140,
                    width: double.infinity,
                    child: MostRecentlyList(),
                  ),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: .topStart,
                  child: Text(
                    StringsManager.surasList,
                    style: TextStyle(
                      color: ColorsManager.whiteColor,
                      fontSize: 16,
                      fontWeight: .w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Expanded(child: SurasList()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
