// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
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
            valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
            backgroundColor: Colors.grey[300],
          ),
        ),
        Container(height: 20),
        Text("Circular"),
        Container(height: 5),
        CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
        ),
        Container(height: 20),
      ],
    );
  }
}
