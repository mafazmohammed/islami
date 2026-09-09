import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/data/arabic_suras.dart';

import '../../../../../core/resources/data/aya_number.dart';
import '../../../../../core/resources/data/english_suras.dart';

class SurasList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          arabicQuranSuras.length,
          (index) {
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
                        Text('${index+1}',style: TextStyle(
                          color: ColorsManager.whiteColor,
                          fontWeight: .bold,
                          fontSize: 14
                        ),),
                      ],
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  englishQuranSuras[index],
                                style: TextStyle(
                                  color: ColorsManager.whiteColor,
                                  fontSize: 20,
                                  fontWeight: .w700,
                                ),
                              ),
                              Text(
                                '${ayaNumber[index]} Verses',
                                style: TextStyle(
                                  color: ColorsManager.whiteColor,
                                  fontSize: 14,
                                  fontWeight: .w700
                                ),
                              ),
                            ],
                          ),
                          Text(
                            arabicQuranSuras[index],
                            style: TextStyle(
                              color: ColorsManager.whiteColor,
                              fontSize: 20,
                              fontWeight: .w700
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 302,
                  child: const Divider(
                    color: ColorsManager.whiteColor,
                    thickness: 1,
                  ),
                ),
              ],
            );
          },
      ),
    );
  }
  
}