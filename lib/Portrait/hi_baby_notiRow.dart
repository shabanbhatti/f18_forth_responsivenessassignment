import 'package:f18_forth_responsivenessassignment/Portrait/bellContainer.dart';
import 'package:flutter/material.dart';

class HiBaby_Row extends StatelessWidget {
  const HiBaby_Row({super.key});
  Text textHiBaby() {
    return const Text(
      'Hi, Baby!',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Text textDate() {
    return Text(
      '20 Nov 2024',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(0.3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Spacer(
          flex: 32,
        ),
        Flexible(
          flex: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 50, child: FittedBox(child: textHiBaby())),
              Flexible(flex: 50, child: FittedBox(child: textDate())),
            ],
          ),
        ),
        const Spacer(
          flex: 130,
        ),
        const Flexible(flex: 50, child: BellContainer()),
      ],
    );
  }
}
