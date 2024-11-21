import 'package:f18_forth_responsivenessassignment/Portrait/bottomContainer.dart';
import 'package:f18_forth_responsivenessassignment/Portrait/hi_baby_notiRow.dart';
import 'package:f18_forth_responsivenessassignment/Portrait/searchContainer.dart';
import 'package:flutter/material.dart';

class MainPortrait extends StatelessWidget {
  const MainPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 7,
        ),
        Flexible(flex: 10, child: HiBaby_Row()),
        Spacer(
          flex: 7,
        ),
        Flexible(flex: 10, child: SearchContainer()),
        Spacer(
          flex: 4,
        ),
        Flexible(flex: 80, child: BottomContainer())
      ],
    );
  }
}
