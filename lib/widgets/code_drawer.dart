// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/utils/img.dart';

class CodeDrawer extends StatelessWidget {
  const CodeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 190,
              child: Stack(
                children: <Widget>[
                  // Image.asset(
                  //   Img.get('material_bg_1.png'),
                  //   width: double.infinity,
                  //   height: double.infinity,
                  //   fit: BoxFit.cover,
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 14),
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.grey[100],
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage:
                            AssetImage(Img.get("photo_male_6.jpg")),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Tolhah Aminuddin",
                              style: blackTextStyle.copyWith(
                                  fontWeight: FontWeight.bold)),
                          Container(height: 5),
                          Text("mr.tolhah@mail.com", style: greyTextStyle)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Home",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.home, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Trending",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.whatshot, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Latest",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.access_time, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Highlight",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.highlight, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("Settings",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.settings, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Help",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.help_outline, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
