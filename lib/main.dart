// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sinarmas_widget/models/bottom_nav.dart';
import 'package:sinarmas_widget/shared/my_colors.dart';
import 'package:sinarmas_widget/widgets/code_bottom_sheets.dart';
import 'package:sinarmas_widget/widgets/code_buttons.dart';
import 'package:sinarmas_widget/widgets/code_cards.dart';
import 'package:sinarmas_widget/widgets/code_chips.dart';
import 'package:sinarmas_widget/widgets/code_datepicker.dart';
import 'package:sinarmas_widget/widgets/code_dialogs.dart';
import 'package:sinarmas_widget/widgets/code_drawer.dart';
import 'package:sinarmas_widget/widgets/code_expands.dart';
import 'package:sinarmas_widget/widgets/code_list.dart';
import 'package:sinarmas_widget/widgets/code_progress.dart';
import 'package:sinarmas_widget/widgets/code_timepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, MyColors.primary),
    BottomNav('Business', Icons.business, MyColors.primary),
    BottomNav('Profile', Icons.account_circle, MyColors.primary)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.primary,
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: MyColors.grey_3),
          title: Text("Toolbar"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search), onPressed: () {}), // overflow menu
            PopupMenuButton<String>(
              onSelected: (String value) {},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            )
          ]),
      drawer: CodeDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(15),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CodeButtons(),
                CodeCards(),
                CodeBottomSheet(),
                CodeChips(),
                CodeDialogs(),
                CodeList(),
                CodeExpands(),
                CodeDatepicker(),
                CodeTimepicker(),
                CodeProgress(),
                // CodeToast()
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[700],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: itemsNav.map((BottomNav d) {
          return BottomNavigationBarItem(
            icon: Icon(d.icon),
            label: d.title,
          );
        }).toList(),
      ),
    );
  }
}
