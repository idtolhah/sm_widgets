// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/utils/img.dart';
import 'package:sinarmas_widget/shared/dummy.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeCards extends StatelessWidget {
  const CodeCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSection(title: "Cards", subtitle: "/widgets/code_cards.dart"),
        // Basic Card
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                Img.get('image_7.jpg'),
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Phasellus a Turpis id Nisi",
                      style: TextStyle(fontSize: 24, color: Colors.grey[800]),
                    ),
                    Container(height: 10),
                    Container(
                      child: Text(MyStrings.middle_lorem_ipsum,
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[700])),
                    )
                  ],
                ),
              ),
              Container(height: 10)
            ],
          ),
        ),
        // 1 Line Card
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: kPrimaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Phasellus a Turpis id Nisi",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Container(height: 10),
                    Container(
                      child: Text(MyStrings.medium_lorem_ipsum,
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[200])),
                    ),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.transparent),
                child: Text(
                  "LISTEN NOW",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        // 2 Line Cards
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                color: kSecondaryColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Aliquet Et Ante \nMorbi",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 0.5,
                      height: 0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 15,
                        ),
                        Text(
                          "March 19, 17",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.event, color: Colors.white),
                          onPressed: () {},
                        ),
                        Container(
                          width: 4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(width: 2),
            Expanded(
              flex: 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                color: kAccentColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 15,
                        ),
                        Text(
                          "Call",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.call, color: Colors.white),
                          onPressed: () {},
                        ),
                        Container(
                          width: 4,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Vitae Tortor \nSed",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
