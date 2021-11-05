// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';
import 'package:sinarmas_widget/widgets/custom_section.dart';

class CodeTimepicker extends StatefulWidget {
  CodeTimepicker({Key? key}) : super(key: key);

  @override
  _CodeTimepickerState createState() => _CodeTimepickerState();
}

class _CodeTimepickerState extends State<CodeTimepicker> {
  Future<TimeOfDay>? selectedTime;
  String time = "-";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSection(
            title: "Timepicker", subtitle: "/widgets/code_timepicker.dart"),
        Align(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 30),
                primary: kAccentColor),
            child: Text("PICK TIME", style: whiteTextStyle),
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
    selectedTime = showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext? context, Widget? child) {
        return Theme(
          data: ThemeData.light(),
          child: child!,
        );
      },
    ) as Future<TimeOfDay>?;
    selectedTime?.then((value) {
      setState(() {
        if (value == null) return;
        time = value.hour.toString() + " : " + value.minute.toString();
      });
    }, onError: (error) {
      print(error);
    });
  }
}
