import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottaoNavigatioBar extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BottaoNavigatioBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      onTap: (int val) => setState(() => _index = val),
      currentIndex: _index,
      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Início'),
        FloatingNavbarItem(icon: Icons.list_alt_outlined, title: 'Categorias'),
        FloatingNavbarItem(icon: Icons.person_outline_rounded, title: 'Conta'),
        FloatingNavbarItem(icon: Icons.settings, title: 'Definições'),
      ],
    );
  }
}
