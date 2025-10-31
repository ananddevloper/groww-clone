import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww_app_design/screens/explore_screen.dart';

void main() {
  runApp(GrowwApp());
}

class GrowwApp extends StatelessWidget {
  const GrowwApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter",
      theme: _buildTheme(Brightness.light), //by default code for font pakage
      home: ExploreScreen(),
    );
  }
}

ThemeData _buildTheme(Brightness brightness) {
  final ThemeData baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
  );
}
