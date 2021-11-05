// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/dummy.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeList extends StatelessWidget {
  const CodeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customList() {
      return InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(width: 20),
              Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image_27.jpg'),
                  ),
                  width: 50,
                  height: 50),
              Container(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Title",
                      style: blackTextStyle.copyWith(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.normal),
                    ),
                    Container(height: 5),
                    Text(
                      MyStrings.middle_lorem_ipsum,
                      maxLines: 2,
                      style: blackTextStyle.copyWith(color: Colors.grey),
                    ),
                    Container(height: 15),
                    Divider(color: Colors.grey[300], height: 0),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        CustomSection(title: "List", subtitle: "/widgets/code_list.dart"),
        customList(),
        customList(),
        customList()
      ],
    );
  }
}
