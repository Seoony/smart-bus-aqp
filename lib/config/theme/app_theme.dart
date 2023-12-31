import 'package:flutter/material.dart';
const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blueAccent,
  Colors.teal,
  Colors.greenAccent,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];
class AppTheme{
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  });
  ThemeData theme(){
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark
    );
  }
}