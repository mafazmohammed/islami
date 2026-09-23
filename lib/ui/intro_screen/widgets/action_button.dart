import 'package:flutter/material.dart';
import 'package:islami/core/resources/colors_manager.dart';

class ActionButton extends StatelessWidget{
  final VoidCallback onClicked;
  final String text;
  ActionButton({
    required this.text,
    required this.onClicked
});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClicked,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.dark_grey,
          foregroundColor: ColorsManager.gold,
        ),
        child: Text(text,style: TextStyle(
          fontSize: 16,
          fontWeight: .w700
        ),),
    );
  }

}