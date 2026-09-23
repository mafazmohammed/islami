import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/core/resources/colors_manager.dart';

import '../resources/assets_manager.dart';

// change it to text field
class TextBar extends StatelessWidget {
  final String title;

  TextBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        style: TextStyle(
          fontSize: 16,
          fontWeight: .w700,
          color: ColorsManager.whiteColor,
        ),
        cursorColor: ColorsManager.gold,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorsManager.gradient1,
          // prefixIconConstraints: BoxConstraints(maxWidth: 28, maxHeight: 28),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
            child: SvgPicture.asset(
              AssetsManager.quranTab,
              colorFilter: ColorFilter.mode(
                ColorsManager.gold,
                BlendMode.srcIn,
              ),
            ),
          ),
          hintText: title,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: .w700,
            color: ColorsManager.whiteColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 2, color: ColorsManager.gold),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 2, color: ColorsManager.gold),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 2, color: ColorsManager.gold),
          ),
        ),
      ),
    );
  }
}

//Container(
//       width: double.infinity,
//       height: 55,
//       decoration: BoxDecoration(
//         color: ColorsManager.gradient1,
//         shape: BoxShape.rectangle,
//         border: BoxBorder.all(width: 2, color: ColorsManager.gold),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Row(
//         children: [
//           if (isIcon)
//             Padding(
//               padding: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
//               child: SvgPicture.asset(
//                 AssetsManager.quranTab,
//                 colorFilter: ColorFilter.mode(
//                   ColorsManager.gold,
//                   BlendMode.srcIn,
//                 ),
//               ),
//             ),
//           const SizedBox(width: 13),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: .w700,
//               color: ColorsManager.whiteColor,
//             ),
//           ),
//         ],
//       ),
//     );
