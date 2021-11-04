import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';

class CustomSection extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomSection({required this.title, required this.subtitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          alignment: Alignment.topLeft,
          child: Row(children: <Widget>[
            Text(
              title,
              style: blackTextStyle.copyWith(fontSize: 30),
            ),
            Expanded(
              child: Text(
                subtitle,
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
            ),
          ]),
        ),
        const Divider(),
      ],
    );
  }
}
