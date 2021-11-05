import 'package:flutter/material.dart';
import 'package:sinarmas_widget/shared/theme.dart';

class CodeBottomNavbar extends StatefulWidget {
  const CodeBottomNavbar({Key? key}) : super(key: key);

  @override
  State<CodeBottomNavbar> createState() => _CodeBottomNavbarState();
}

class _CodeBottomNavbarState extends State<CodeBottomNavbar> {
  int currentIndex = 0;
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Most Used', Icons.store, kPrimaryColor),
    BottomNav('Form', Icons.business, kPrimaryColor),
    BottomNav('Get Data', Icons.accessibility, kPrimaryColor)
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kPrimaryColor,
      selectedItemColor: kWhiteColor,
      unselectedItemColor: kInactiveColor,
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
    );
  }
}

class BottomNav {
  String title;
  IconData icon;
  Color color;

  BottomNav(this.title, this.icon, this.color);
}
