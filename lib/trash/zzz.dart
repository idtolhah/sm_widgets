// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/my_colors.dart';

class SquareButton extends StatelessWidget {
  final String title;
  final String color;
  final String type;
  final Function() onPressed;

  const SquareButton({
    Key? key,
    required this.title,
    this.color = 'primary',
    this.type = '',
    required this.onPressed,
  }) : super(key: key);

  Color getColor(String color) {
    if (color == 'primary') return MyColors.primary;
    if (color == 'secondary') return MyColors.secondary;
    if (color == 'warning') return MyColors.warning;
    if (color == 'danger') return MyColors.danger;
    return MyColors.primary;
  }

  @override
  Widget build(BuildContext context) {
    if (type == 'text') {
      return TextButton(
        style: TextButton.styleFrom(primary: Colors.transparent),
        child: Text(
          title,
          style: TextStyle(color: getColor(color)),
        ),
        onPressed: () {},
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: getColor(color)),
        child: Text(title, style: TextStyle(color: Colors.white)),
        onPressed: onPressed,
      );
    }
  }
}
