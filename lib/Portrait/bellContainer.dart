import 'package:flutter/material.dart';

class BellContainer extends StatelessWidget {
  const BellContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color.fromARGB(
          255,
          192,
          235,
          255,
        ).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Flexible(
          child: FittedBox(
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
