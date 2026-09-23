import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/data/hadeth_model.dart';

class MySliderUi extends StatefulWidget {
  final int index;
  final void Function(HadethModel hadeth) onPressed;

  MySliderUi({required this.index, required this.onPressed});

  @override
  State<MySliderUi> createState() => _MySliderUiState();
}

class _MySliderUiState extends State<MySliderUi> {
  HadethModel hadethModel = HadethModel(content: '', title: '');

  @override
  void initState() {
    getHadeth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onPressed(hadethModel),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .circular(20),
          color: ColorsManager.gold,
          image: DecorationImage(
            image: AssetImage(AssetsManager.hadith_card_background),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.3, left: 8),
                  child: Align(
                    alignment: .topStart,
                    child: Image.asset(AssetsManager.left_corner),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.3, right: 8),
                  child: Align(
                    alignment: .topEnd,
                    child: Image.asset(AssetsManager.right_corner),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      hadethModel.title,
                      textAlign: .center,
                      style: TextStyle(
                        fontWeight: .w700,
                        fontFamily: 'Janna',
                        height: 1,
                        fontSize: 24,
                        color: ColorsManager.dark_grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Text(
                        hadethModel.content,
                        textAlign: .center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: ColorsManager.dark_grey,
                          fontSize: 16,
                          fontWeight: .w700,
                          fontFamily: 'Janna',
                          height: 1.5,
                          wordSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getHadeth() async {
    final String hadethPath = 'assets/data/hadeth/h${widget.index + 1}.txt';
    final String fileContent = await rootBundle.loadString(hadethPath);
    final List<String> lines = fileContent.split('\n');
    final String title = lines[0];
    lines.removeAt(0);
    final String content = lines.join('');
    hadethModel = HadethModel(title: title, content: content);
    setState(() {});
  }
}
