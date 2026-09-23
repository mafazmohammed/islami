import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';

class IslamiLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
       padding: .only(top: 16),
       child: Image.asset(AssetsManager.islami_logo,width: 328,)
   );
  }

}