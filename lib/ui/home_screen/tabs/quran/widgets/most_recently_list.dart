import 'package:flutter/material.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/data/quran_model.dart';

class MostRecentlyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // convert page view to list view . sperated
    return ListView.builder(
      itemCount: QuranModel.suras.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            width: 300,
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
                      Text(
                        QuranModel.suras[index].englishName,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: .w700,
                          color: ColorsManager.dark_grey,
                        ),
                      ),
                      Text(
                        QuranModel.suras[index].arabicName,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: .w700,
                          color: ColorsManager.dark_grey,
                        ),
                      ),
                      Text(
                        "${QuranModel.suras[index].ayahNumber} Verses",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: .w700,
                          color: ColorsManager.dark_grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Image.asset(
                      AssetsManager.mostRecent,
                      fit: BoxFit.contain,
                    ),
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
