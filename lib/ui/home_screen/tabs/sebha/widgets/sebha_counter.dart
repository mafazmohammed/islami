import 'package:flutter/material.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';

class SebhaCounter extends StatefulWidget {
  @override
  State<SebhaCounter> createState() => _SebhaCounterState();
}

class _SebhaCounterState extends State<SebhaCounter> {
  int index = 0;
  double rotation = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          index++;
          if (index > 33) {
            index = 0;
          }
          rotation += 0.5;
        });
      },
      child: Column(
        children: [
          Align(
            alignment: .center,
            child: Image.asset(AssetsManager.sebhaHead, height: 86),
          ),
          Stack(
            alignment: .center,
            children: [
              Transform.rotate(
                angle: rotation,
                child: Image.asset(AssetsManager.sebhaBody),
              ),
              Column(
                children: [
                  Text(
                    "سبحان الله",
                    style: TextStyle(
                      color: ColorsManager.whiteColor,
                      fontFamily: 'Janna',
                      fontWeight: .w700,
                      fontSize: 36,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '${index}',
                    style: TextStyle(
                      color: ColorsManager.whiteColor,
                      fontFamily: 'Janna',
                      fontWeight: .w700,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
