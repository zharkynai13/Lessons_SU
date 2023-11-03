import 'package:flutter/material.dart';
import 'package:lessons_text_widgets/add_screen.dart';
import 'package:lessons_text_widgets/deatils_screen.dart';
import 'package:lessons_text_widgets/search_screen.dart';
import 'package:lessons_text_widgets/widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int currentIndex = 0;

List<Widget> screens = [
  Instagram(),
  SearchScreen(),
  AddScreen(),
  DetailScreen()
];

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex = currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: "",
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.add_a_photo)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.details)),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
