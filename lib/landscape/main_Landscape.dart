import 'package:f18_forth_responsivenessassignment/landscape/lnd_bottom_container.dart';
import 'package:f18_forth_responsivenessassignment/landscape/lnd_hi_baby_row.dart';
import 'package:f18_forth_responsivenessassignment/landscape/lnd_search_container.dart';
import 'package:flutter/material.dart';

class MainLandscape extends StatelessWidget {
  const MainLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 7,
        ),
        Flexible(flex: 10, fit: FlexFit.loose, child: Lnd_HiBaby_Row()),
        Spacer(
          flex: 7,
        ),
        Flexible(flex: 10, child: Lnd_SearchContainer()),
        Spacer(
          flex: 4,
        ),
        Flexible(flex: 80, child: Lnd_BottomContainer())
      ],
    );
  }
}
