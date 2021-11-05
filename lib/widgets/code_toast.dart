// ignore_for_file: unnecessary_new, prefer_const_constructors, sized_box_for_whitespace, prefer_const_declarations, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeToast extends StatefulWidget {
  const CodeToast({Key? key}) : super(key: key);

  @override
  State<CodeToast> createState() => _CodeToastState();
}

class _CodeToastState extends State<CodeToast> {
  BuildContext? _scaffoldCtx;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSection(
            title: "Toast & Snackbars", subtitle: "/widgets/code_toast.dart"),
        Text("Toast"),
        Container(height: 10, width: 0),
        Container(
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: kAccentColor),
            child: Text("SIMPLE", style: whiteTextStyle),
            onPressed: () {
              showSimpleToast(context);
            },
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: kAccentColor),
            child: Text("COLORED PRIMARY", style: whiteTextStyle),
            onPressed: () {
              showColoredPrimaryToast(context);
            },
          ),
        ),
        Text("Snackbar"),
        Container(height: 10, width: 0),
        Container(
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: kAccentColor),
            child: Text("SIMPLE", style: whiteTextStyle),
            onPressed: () {
              showSimpleSnackbar(context);
            },
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: kAccentColor),
            child: Text("WITH ACTION", style: whiteTextStyle),
            onPressed: () {
              snackBarWithAction(context);
            },
          ),
        )
      ],
    );
  }

  void showSimpleToast(BuildContext context) {
    // Toast.show("Simple Toast", context);
  }

  void showColoredPrimaryToast(BuildContext context) {
    // Toast.show("Colored Primary", context, backgroundColor: kPrimaryColor);
  }

  void showSimpleSnackbar(BuildContext context) {
    ScaffoldMessenger.of(_scaffoldCtx!).showSnackBar(SnackBar(
      content: Text("Simple Snackbar"),
      duration: Duration(seconds: 1),
    ));
  }

  void snackBarWithAction(BuildContext context) {
    ScaffoldMessenger.of(_scaffoldCtx!).showSnackBar(SnackBar(
      content: Text("Snackbar With Action"),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: () {},
      ),
    ));
  }
}
