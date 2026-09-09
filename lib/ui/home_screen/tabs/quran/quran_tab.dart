import 'package:flutter/material.dart';
import 'package:islami/ui/home_screen/tabs/quran/widgets/sura_page_view.dart';
import 'package:islami/ui/home_screen/tabs/quran/widgets/suras_list.dart';

import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/reusable_components/background.dart';
import '../../../../core/reusable_components/text_bar.dart';

class QuranTab extends StatelessWidget{
  final int index;
  QuranTab({
    required this.index
});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 190,),
              TextBar(title: "Sura Name",isIcon: true,),
              Expanded(child: ListView(
                padding: .only(top: 20),
               children: [
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
                 const SizedBox(height: 10,),
                 Align(
                   alignment: .topStart,
                   child: SizedBox(
                       height: 140,
                       width: double.infinity,
                       child: SuraPageView(
                         index: index,
                       )),
                 ),
                 const SizedBox(height: 10,),
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
                 const SizedBox(height: 10,),
                  SurasList(),
               ],
                               )),
            ],
          ),
        )
      ],
    );
  }
}