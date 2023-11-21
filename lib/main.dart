import 'package:artfulspot/View/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Artfulspot',
      theme: _buildTheme(Brightness.light),
      home: const HomePage(),
    );
  }
}

ThemeData _buildTheme(Brightness brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.publicSansTextTheme(baseTheme.textTheme),
  );
}
