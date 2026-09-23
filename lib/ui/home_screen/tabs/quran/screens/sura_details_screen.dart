import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/data/quran_model.dart';
import 'package:islami/ui/home_screen/tabs/quran/widgets/sura_details_ui.dart';

// i will call the getSurah() , here because this screen will show the content so its the screen who will load it .
// the surahVerses that stores the uploaded data  will become here a global variable , because The data should belong to the screen displaying that Sura

class SuraDetailsScreen extends StatefulWidget {
  final QuranModel quranModel;

  const SuraDetailsScreen({super.key, required this.quranModel});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  // inialized here because it belongs to this particular Sura Details screen
  String surahVerses = '';

  Future<void> getSurah() async {
    String surahContent = await rootBundle.loadString(
      'assets/data/Suras/${widget.quranModel.id}.txt',
    );
    List<String> suraLines = surahContent.split("\n");
    String result = '';
    for (int i = 0; i < suraLines.length; i++) {
      result += suraLines[i].trim();
      result += " [${i + 1}] ";
    }
    setState(() {
      surahVerses = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    // receiving el object
    QuranModel quranModel =
        ModalRoute.of(context)!.settings.arguments as QuranModel;
    if (surahVerses.isEmpty) {
      getSurah();
    }

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
        centerTitle: true,
        title: Text(
          // accessed directly using el passed object
          quranModel.englishName,
          style: TextStyle(
            color: ColorsManager.gold,
            fontWeight: .w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: ColorsManager.dark_grey,
        child: SuraDetailsUi(quranModel: quranModel, surahVerses: surahVerses),
      ),
    );
  }
}

// String surahVerses = '';
//
// Future<void> getSurah(int ayaNumber) async {
//   String surahContent = await rootBundle.loadString(
//     'assets/data/Suras/${ayaNumber}.txt',
//   );
//   List<String> suraLines = surahContent.split("\n");
//   for (int i = 0; i < suraLines.length; i++) {
//     surahVerses += suraLines[i].trim();
//     surahVerses += "(${i + 1})";
//   }
//   setState(() {});
// }
