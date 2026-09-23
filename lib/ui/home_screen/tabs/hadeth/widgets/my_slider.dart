import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/resources/routes_manager.dart';
import 'package:islami/ui/home_screen/tabs/hadeth/widgets/my_slider_ui.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: CarouselSlider.builder(
        itemCount: 50,
        itemBuilder: (context, index, realIndex) {
          return MySliderUi(
            index: index,
            onPressed: (hadeth) {
              Navigator.pushNamed(
                context,
                RoutesManager.hadethDetailsRouteName,
                arguments: {'hadeth': hadeth, 'index': index},
              );
            },
          );
        },
        options: CarouselOptions(
          height: 600,
          autoPlay: true,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          enlargeFactor: 0.15,
        ),
      ),
    );
  }
}
