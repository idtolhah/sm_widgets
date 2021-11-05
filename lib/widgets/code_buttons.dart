// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeButtons extends StatelessWidget {
  const CodeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomSection(title: "Buttons", subtitle: "widgets/code_buttons.dart"),
        Divider(),
        Row(
          children: <Widget>[
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey[300]),
              child: Text("NORMAL", style: TextStyle(color: Colors.grey[800])),
              onPressed: () {},
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: kPrimaryColor),
              child: Text("PRIMARY", style: TextStyle(color: Colors.white)),
              onPressed: () {},
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: kSecondaryColor),
              child: Text(
                "SECONDARY",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
        Row(
          children: <Widget>[
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.transparent),
              child: Text(
                "NORMAL",
                style: TextStyle(color: Colors.grey[800]),
              ),
              onPressed: () {},
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.transparent),
              child: Text(
                "PRIMARY",
                style: TextStyle(color: kPrimaryColor),
              ),
              onPressed: () {},
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.transparent),
              child: Text(
                "SECONDARY",
                style: TextStyle(color: kSecondaryColor),
              ),
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
        Row(
          children: <Widget>[
            Spacer(),
            ElevatedButton(
              child: Text("NORMAL"),
              onPressed: null,
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: Text(
                "PRIMARY",
                style: TextStyle(color: kPrimaryColor),
              ),
              onPressed: () {},
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: Text(
                "SECONDARY",
                style: TextStyle(color: kSecondaryColor),
              ),
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
        Divider(),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.phone_paused),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.people,
                color: kPrimaryColor,
              ),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.mic,
                color: kSecondaryColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Divider(),
        Row(
          children: <Widget>[
            FloatingActionButton(
              heroTag: "fab1",
              backgroundColor: Colors.white,
              elevation: 3,
              child: Icon(
                Icons.mic,
                color: Colors.black87,
              ),
              onPressed: () {
                print('Clicked');
              },
            ),
            Spacer(),
            FloatingActionButton(
              heroTag: "fab2",
              backgroundColor: kPrimaryColor,
              elevation: 3,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                print('Clicked');
              },
            ),
            Spacer(),
            FloatingActionButton(
              heroTag: "fab3",
              backgroundColor: kSecondaryColor,
              elevation: 3,
              child: Icon(
                Icons.create,
                color: Colors.white,
              ),
              onPressed: () {
                print('Clicked');
              },
            ),
          ],
        ),
      ],
    );
  }
}
