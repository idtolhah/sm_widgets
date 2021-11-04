// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/my_colors.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeProgress extends StatelessWidget {
  const CodeProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomSection(
            title: "Progress", subtitle: "/widgets/code_progress.dart"),
        Text("Linear"),
        Container(height: 5),
        Container(
          height: 5,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
            backgroundColor: Colors.grey[300],
          ),
        ),
        Container(height: 20),
        Text("Circular"),
        Container(height: 5),
        CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
        ),
        Container(height: 20),
      ],
    );
  }
}
