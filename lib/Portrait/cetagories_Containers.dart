import 'package:flutter/material.dart';

class Cetagories_Containers extends StatelessWidget {
  Cetagories_Containers(
      {super.key,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.color4,
      required this.name});
  var color1;
  var color2;
  var color3;
  var color4;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 150,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2, color3, color4],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: FittedBox(
          child: Text(
            name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
