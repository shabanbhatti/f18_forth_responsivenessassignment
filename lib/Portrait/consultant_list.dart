import 'package:flutter/material.dart';

class ConsultantList extends StatelessWidget {
  ConsultantList({super.key, required this.personName, required this.image});
  String personName;
  var image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 114, 114, 114),
                blurRadius: 7,
                offset: Offset(0, 0),
                blurStyle: BlurStyle.outer),
          ]),
      child: Center(
          child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(
            flex: 1,
          ),
          Flexible(
            flex: 20,
            child: CircleAvatar(radius: 27, backgroundImage: AssetImage(image)),
          ),
          const Spacer(
            flex: 1,
          ),
          Flexible(
            flex: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 50,
                  child: FittedBox(
                    child: Text(
                      personName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Flexible(
                  flex: 50,
                  child: FittedBox(
                    child: Text(
                      'Senior Assistant',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
