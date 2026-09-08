import 'package:flutter/material.dart';
import 'package:islami/model/page_view_images.dart';

class IntroPageView extends StatefulWidget{
  final PageController controller;
  final Function(int) onPageChanged;

  const IntroPageView({
    required this.controller,
    required this.onPageChanged,
  });

  @override
  State<IntroPageView> createState() => _IntroPageViewState();
}

class _IntroPageViewState extends State<IntroPageView> {
  @override
  Widget build(BuildContext context) {
    return  Padding(

      padding: const EdgeInsets.only(
        left: 29,
        right: 29,
      ),
      child: SizedBox(
              height: 415,
              child: PageView.builder(
                controller: widget.controller,
                itemCount: pageViewImages.length,
                onPageChanged: widget.onPageChanged,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      pageViewImages[index],
                      fit: .contain,
                    );
                  },
              ),
            ),
    );
  }
}