// ignore_for_file: unnecessary_new, prefer_const_constructors, sized_box_for_whitespace, prefer_const_declarations, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/my_colors.dart';
import 'package:flutter/widgets.dart';
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
                primary: MyColors.accent),
            child: Text("SIMPLE", style: TextStyle(color: Colors.white)),
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
                primary: MyColors.accent),
            child:
                Text("COLORED PRIMARY", style: TextStyle(color: Colors.white)),
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
                primary: MyColors.accent),
            child: Text("SIMPLE", style: TextStyle(color: Colors.white)),
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
                primary: MyColors.accent),
            child: Text("WITH ACTION", style: TextStyle(color: Colors.white)),
            onPressed: () {
              snackBarWithAction(context);
            },
          ),
        )
      ],
    );
  }

  void showSimpleToast(BuildContext context) {
    Toast.show("Simple Toast", context);
  }

  void showColoredPrimaryToast(BuildContext context) {
    Toast.show("Colored Primary", context, backgroundColor: MyColors.primary);
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

class Toast {
  static final int LENGTH_SHORT = 1;
  static final int LENGTH_LONG = 2;
  static final int BOTTOM = 0;
  static final int CENTER = 1;
  static final int TOP = 2;

  static void show(String msg, BuildContext context,
      {int duration = 1,
      int gravity = 0,
      Color backgroundColor = const Color(0xAA000000),
      Color textColor = Colors.white,
      double backgroundRadius = 20,
      Border? border}) {
    ToastView.dismiss();
    ToastView.createView(msg, context, duration, gravity, backgroundColor,
        textColor, backgroundRadius, border!);
  }
}

class ToastView {
  static final ToastView _singleton = new ToastView._internal();

  factory ToastView() {
    return _singleton;
  }

  ToastView._internal();

  static OverlayState? overlayState;
  static OverlayEntry? _overlayEntry;
  static bool _isVisible = false;

  static void createView(
      String msg,
      BuildContext context,
      int duration,
      int gravity,
      Color background,
      Color textColor,
      double backgroundRadius,
      Border border) async {
    overlayState = Overlay.of(context);

    Paint paint = Paint();
    paint.strokeCap = StrokeCap.square;
    paint.color = background;

    _overlayEntry = new OverlayEntry(
      builder: (BuildContext context) => ToastWidget(
          widget: Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(backgroundRadius),
                    border: border,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                  child: Text(msg,
                      softWrap: true,
                      style: TextStyle(fontSize: 15, color: textColor)),
                )),
          ),
          gravity: gravity),
    );
    _isVisible = true;
    overlayState?.insert(_overlayEntry!);
    await new Future.delayed(
        Duration(seconds: duration == null ? Toast.LENGTH_SHORT : duration));
    dismiss();
  }

  static dismiss() async {
    if (!_isVisible) {
      return;
    }
    _isVisible = false;
    _overlayEntry?.remove();
  }
}

class ToastWidget extends StatelessWidget {
  ToastWidget({
    Key? key,
    required this.widget,
    required this.gravity,
  }) : super(key: key);

  final Widget widget;
  final int gravity;

  @override
  Widget build(BuildContext context) {
    return new Positioned(
        top: gravity == 2 ? 50 : null,
        bottom: gravity == 0 ? 50 : null,
        child: Material(
          color: Colors.transparent,
          child: widget,
        ));
  }
}
