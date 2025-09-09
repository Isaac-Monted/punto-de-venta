import 'package:flutter/material.dart';

const Color _customColors = Color(0xFF3097B1); // HEX ->0xFF

const List<Color> _colorThemes = [
  _customColors,
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
  Colors.white,
  Colors.black
];

const List<Brightness> _brightnessTheme = [
  Brightness.dark,
  Brightness.light,
];

class AppTheme {
  final int selectedColor;
  final int selecterBrightness;

  AppTheme({this.selectedColor = 5, this.selecterBrightness = 0})
  :assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
  'el color debe de estar entre 0 y ${_colorThemes.length - 1}'),
  assert(selecterBrightness >= 0 && selecterBrightness < _brightnessTheme.length,
  'el tema debe de estar entre 0 y ${_brightnessTheme.length - 1}');

  ThemeData theme () {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: _brightnessTheme[selecterBrightness],
    );
  }
}
