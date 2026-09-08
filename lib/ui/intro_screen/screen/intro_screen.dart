import 'package:flutter/material.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/ui/intro_screen/widgets/intro_details.dart';
import 'package:islami/ui/intro_screen/widgets/intro_page_view.dart';

class IntroScreen extends StatefulWidget{
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int currentIndex=0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: ColorsManager.dark_grey,
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Column(
         crossAxisAlignment: .stretch,
         spacing: 20,
         children: [
           Container(
               padding: .only(top: 16),
               child: Image.asset(AssetsManager.islami_logo,width: 328,)
           ),
           IntroPageView(
             controller: _pageController,
             onPageChanged: (index) {
               setState(() {
                 currentIndex=index;
               });
             },
           ),
           IntroDetails(index: currentIndex,controller: _pageController,),
         ],
       ),
     ),
   );
  }
}