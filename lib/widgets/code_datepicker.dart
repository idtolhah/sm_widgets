// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/utils/tools.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeDatepicker extends StatefulWidget {
  const CodeDatepicker({Key? key}) : super(key: key);

  @override
  State<CodeDatepicker> createState() => _CodeDatepickerState();
}

class _CodeDatepickerState extends State<CodeDatepicker> {
  Future<DateTime>? selectedDate;
  String date = "-";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSection(
            title: "Datepicker", subtitle: "/widgets/code_datepicker.dart"),
        Align(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 30),
                primary: kPrimaryColor),
            child: Text("PICK DATE", style: whiteTextStyle),
            onPressed: () {
              showDialogPicker(context);
            },
          ),
          alignment: Alignment.center,
        )
      ],
    );
  }

  void showDialogPicker(BuildContext context) {
    selectedDate = showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      builder: (BuildContext? context, Widget? child) {
        return Theme(
          data: ThemeData.light(),
          child: child!,
        );
      },
    ) as Future<DateTime>?;
    selectedDate?.then((value) {
      setState(() {
        if (value == null) return;
        date = Tools.getFormattedDateSimple(value.millisecondsSinceEpoch);
      });
    }, onError: (error) {
      print(error);
    });
  }
}
