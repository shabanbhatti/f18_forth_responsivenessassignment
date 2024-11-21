import 'package:f18_forth_responsivenessassignment/Portrait/main_Portrait.dart';
import 'package:f18_forth_responsivenessassignment/landscape/main_Landscape.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
// --------------Functions portion--------------------------------

  List<Color> gradientColors = [
    const Color.fromARGB(255, 0, 105, 191),
    const Color.fromARGB(255, 50, 141, 215),
    const Color.fromARGB(255, 43, 159, 255),
    const Color.fromARGB(255, 76, 174, 255),
  ];
// --------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Flexible(
          fit: FlexFit.tight,
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: gradientColors)),
              child: OrientationBuilder(
                  builder: (context, orientation) =>
                      orientation == Orientation.portrait
                          ? const MainPortrait()
                          : const MainLandscape())),
        ),
      ),
    );
  }
}
