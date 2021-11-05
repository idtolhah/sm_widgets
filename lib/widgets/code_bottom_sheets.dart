// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeBottomSheet extends StatelessWidget {
  const CodeBottomSheet({Key? key}) : super(key: key);

  void showSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: kWhiteColor,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.visibility),
                  title: Text("Preview"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person_add),
                  title: Text("Share"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: Text("Get link"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.content_copy),
                  title: Text("Make a copy"),
                  onTap: () {},
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CustomSection(
          title: "Bottom Sheet", subtitle: "/widgets/code_bottom_sheets.dart"),
      ElevatedButton(
        style: ElevatedButton.styleFrom(onPrimary: Colors.blue[700]),
        child: Text("PRIMARY", style: whiteTextStyle),
        onPressed: () {
          showSheet(context);
        },
      ),
    ]);
  }
}
