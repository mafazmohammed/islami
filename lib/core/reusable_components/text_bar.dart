import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';

class TextBar extends StatelessWidget{
  final bool isIcon;
  final String title;
  TextBar({
     this.isIcon=false,
    required this.title,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: ColorsManager.gradient1,
        shape: BoxShape.rectangle,
        border: BoxBorder.all(width: 2,color: ColorsManager.gold),
        borderRadius:  BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          if(isIcon)
            Padding(padding: const EdgeInsets.only(left: 13,top: 13,bottom: 13),
              child: SvgPicture.asset(
                AssetsManager.quranTab,
                colorFilter: ColorFilter.mode(
                    ColorsManager.gold,
                    BlendMode.srcIn),
              ),
            ),
          const SizedBox(width: 13,),
          Text(title,style: TextStyle(
            fontSize: 16,
            fontWeight: .w700,
            color: ColorsManager.whiteColor,
          ),)
        ],
      ),
    );
  }

}