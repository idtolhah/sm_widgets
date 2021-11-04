// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeChips extends StatelessWidget {
  const CodeChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSection(title: "Chips", subtitle: "/widgets/code_chips.dart"),
        Row(children: [
          Chip(label: Text('food')),
          Chip(label: Text('drink')),
          Chip(label: Text('cloth')),
          Chip(label: Text('car'))
        ])
      ],
    );
  }
}
