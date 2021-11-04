import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/img.dart';
import 'package:sinarmas_widget/shared/my_text.dart';

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
                  Image.asset(
                    Img.get('material_bg_1.png'),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
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
                          Text("John Miller",
                              style: MyText.body2(context)?.copyWith(
                                  color: Colors.grey[100],
                                  fontWeight: FontWeight.bold)),
                          Container(height: 5),
                          Text("johnmiller@mail.com",
                              style: MyText.body2(context)
                                  ?.copyWith(color: Colors.grey[100]))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Home",
                  style: MyText.subhead(context)?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.home, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Trending",
                  style: MyText.subhead(context)?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.whatshot, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Latest",
                  style: MyText.subhead(context)?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.access_time, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Highlight",
                  style: MyText.subhead(context)?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.highlight, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("Settings",
                  style: MyText.subhead(context)?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.settings, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              title: Text("Help",
                  style: MyText.subhead(context)?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.help_outline, size: 25.0, color: Colors.grey),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
