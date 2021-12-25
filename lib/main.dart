import 'package:flutter/material.dart';
import 'package:myapp/d_theme/theme_data.dart';
import 'package:myapp/screens/home.dart';

void main() {
  runApp(MaterialApp(home: const HomeScreen(), theme: DTheme.darkTheme));
}
