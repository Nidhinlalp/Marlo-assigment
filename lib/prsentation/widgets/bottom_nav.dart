import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      fixedColor: Colors.blue,
      selectedFontSize: 12,
      unselectedFontSize: 30,
      showSelectedLabels: true,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.house_fill),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.money_dollar),
          label: "Loans",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.doc_text),
          label: "Contracts",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.group),
          label: "Teams",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          label: "Chat",
        )
      ],
    );
  }
}
