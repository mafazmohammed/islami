import 'package:flutter/material.dart';
import 'package:islami/core/resources/data/hadeth_model.dart';
import 'package:islami/ui/home_screen/tabs/hadeth/widgets/hadeth_details_ui.dart';

import '../../../../../core/resources/colors_manager.dart';

class HadethDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final HadethModel hadeth = args['hadeth'];
    final int index = args['index'];
    return Scaffold(
      backgroundColor: ColorsManager.dark_grey,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 110,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: ColorsManager.gold),
        ),
        title: Text(
          "Hadith  ${index + 1}",
          textAlign: .center,
          style: TextStyle(
            color: ColorsManager.gold,
            fontWeight: .w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: ColorsManager.dark_grey,
        child: HadethDetailsUi(hadeth: hadeth),
      ),
    );
  }
}
