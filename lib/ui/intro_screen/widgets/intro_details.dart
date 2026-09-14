import 'package:flutter/material.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/ui/intro_screen/widgets/intro_bottom_bar.dart';

import '../../../model/page_view_images.dart';

class IntroDetails extends StatefulWidget{
  final PageController controller;
  final int index;
  IntroDetails({
    required this.index,
    required this.controller
});

  @override
  State<IntroDetails> createState() => _IntroDetailsState();
}

class _IntroDetailsState extends State<IntroDetails> {
  String get title{
    switch(widget.index){
      case 0:
        return 'Welcome To Islmi App';
      case 1:
        return 'Welcome To Islmi App';
      case 2:
        return 'Reading the Quran';
      case 3:
        return 'Bearish';
      case 4:
        return 'Holy Quran Radio';
      default:
        return '';
    }
  }

  String get subTitle{
  switch(widget.index){
  case 0:
  return '';
  case 1:
  return 'We Are Very Excited To Have You In Our \nCommunity';
  case 2:
  return 'Read, and your Lord is the Most Generous';
  case 3:
  return 'Praise the name of your Lord, the Most \nHigh';
  case 4:
  return 'You can listen to the Holy Quran Radio \nthrough the application for free and easily';
  default:
  return '';
  }
}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: .center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: .w700,
                color: ColorsManager.gold,
              ),
            ),
          ),
          if(subTitle.isNotEmpty)
            const SizedBox(height: 16),
          Text(
            subTitle,
            textAlign: .center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: .w700,
              color: ColorsManager.gold,
            ),
          ),
          Expanded(child: IntroBottomBar(index: widget.index,
              onBack: (){
            widget.controller.previousPage(duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);
              },
              onNext: (){
                if (widget.index ==  pageViewImages.length -1) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  widget.controller.nextPage(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                  );
                }
              }))
        ],
      ),
    );
  }
}