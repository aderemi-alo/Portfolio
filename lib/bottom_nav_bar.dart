import 'package:flutter/material.dart';

class CustomButtonNavBar extends StatelessWidget {
  const CustomButtonNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "About Me",
      ),
    ]);
  }
}
