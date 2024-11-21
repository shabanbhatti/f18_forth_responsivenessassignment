import 'package:flutter/material.dart';

class Lnd_SearchContainer extends StatelessWidget {
  const Lnd_SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 480,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(
              flex: 5,
            ),
            Flexible(
              flex: 40,
              child: FittedBox(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Flexible(
              flex: 40,
              child: FittedBox(
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
