// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/dummy.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeExpands extends StatelessWidget {
  const CodeExpands({Key? key}) : super(key: key);

  Widget expandList(index, title) {
    return ExpansionTile(
      leading: Container(
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/image_28.jpg"),
          ),
          width: 35,
          height: 35),
      key: PageStorageKey<int>(index),
      title:
          Text(title, style: blackTextStyle.copyWith(color: Colors.grey[800])),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          color: kWhiteColor,
          child: Text(MyStrings.lorem_ipsum,
              textAlign: TextAlign.justify,
              style: blackTextStyle.copyWith(color: Colors.grey[800])),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomSection(title: "Expands", subtitle: "/widgets/code_expand.dart"),
        expandList(0, "Title 1"),
        expandList(1, "Title 2"),
        expandList(2, "Title 3"),
        expandList(3, "Title 4")
      ],
    );
  }
}
