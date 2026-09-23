import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/data/quran_model.dart';
import 'package:islami/core/resources/routes_manager.dart';

class SurasList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) {
        return Center(
          child: SizedBox(
            width: 302,
            child: const Divider(color: ColorsManager.whiteColor, thickness: 1),
          ),
        );
      },
      itemCount: QuranModel.suras.length,
      itemBuilder: (context, index) {
        QuranModel sura = QuranModel.suras[index];
        return Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: .center,
                  children: [
                    SvgPicture.asset(
                      AssetsManager.sura_no_frame,
                      width: 52,
                      height: 52,
                    ),
                    Text(
                      '${sura.id}',
                      style: TextStyle(
                        color: ColorsManager.whiteColor,
                        fontWeight: .bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RoutesManager.suraDetailsRouteName,
                        arguments: sura,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sura.englishName,
                              style: TextStyle(
                                color: ColorsManager.whiteColor,
                                fontSize: 20,
                                fontWeight: .w700,
                              ),
                            ),
                            Text(
                              '${sura.ayahNumber} Verses',
                              style: TextStyle(
                                color: ColorsManager.whiteColor,
                                fontSize: 14,
                                fontWeight: .w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          sura.arabicName,
                          style: TextStyle(
                            color: ColorsManager.whiteColor,
                            fontSize: 20,
                            fontWeight: .w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
