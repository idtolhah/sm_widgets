// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/widgets/code_custom_button.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeButtons extends StatelessWidget {
  const CodeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomSection(title: "Buttons", subtitle: "/widgets/code_buttons.dart"),
        Divider(),
        Row(
          children: <Widget>[
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey[300]),
              child: Text("NORMAL", style: blackTextStyle),
              onPressed: () {},
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: kPrimaryColor),
              child: Text("PRIMARY", style: whiteTextStyle),
              onPressed: () {},
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: kSecondaryColor),
              child: Text(
                "SECONDARY",
                style: whiteTextStyle,
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
                style: blackTextStyle,
              ),
              onPressed: () {},
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.transparent),
              child: Text(
                "PRIMARY",
                style: redTextStyle,
              ),
              onPressed: () {},
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.transparent),
              child: Text(
                "SECONDARY",
                style: purpleTextStyle,
              ),
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
        Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    primary: kPrimaryColor),
                child: Text("ROUNDED BUTTON", style: whiteTextStyle),
                onPressed: () {},
              ),
              Divider(),
              CustomButton(title: "STRETCHED CUSTOM BUTTON", onPressed: () {}),
            ],
          ),
        ),
        Divider(),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.access_time),
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
                Icons.settings,
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
              backgroundColor: kWhiteColor,
              elevation: 3,
              child: Icon(
                Icons.send,
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
                color: kWhiteColor,
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
                color: kWhiteColor,
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
