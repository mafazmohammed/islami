import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/strings_manager.dart';
import 'package:islami/ui/home_screen/tabs/hadeth/screens/hadeth_tab.dart';
import 'package:islami/ui/home_screen/tabs/quran/screens/quran_tab.dart';
import 'package:islami/ui/home_screen/tabs/radio/radio_tab.dart';
import 'package:islami/ui/home_screen/tabs/sebha/screens/sebha_tab.dart';
import 'package:islami/ui/home_screen/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  late List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
          return TextStyle(
            color: ColorsManager.whiteColor,
            fontSize: 12,
            fontWeight: .w700,
          );
        }),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        indicatorColor: ColorsManager.dark_grey.withValues(alpha: 0.6),
        backgroundColor: ColorsManager.gold,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
              AssetsManager.quranTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
            label: StringsManager.quran,
            selectedIcon: SvgPicture.asset(
              AssetsManager.quranTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              AssetsManager.hadethTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
            label: StringsManager.hadith,
            selectedIcon: SvgPicture.asset(
              AssetsManager.hadethTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              AssetsManager.sebhaTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
            label: StringsManager.sebha,
            selectedIcon: SvgPicture.asset(
              AssetsManager.sebhaTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              AssetsManager.radioTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
            label: StringsManager.radio,
            selectedIcon: SvgPicture.asset(
              AssetsManager.radioTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              AssetsManager.timeTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
            label: StringsManager.time,
            selectedIcon: SvgPicture.asset(
              AssetsManager.timeTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.dark_grey,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
