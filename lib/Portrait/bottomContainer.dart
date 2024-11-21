import 'package:f18_forth_responsivenessassignment/Portrait/cetagories_Containers.dart';
import 'package:f18_forth_responsivenessassignment/Portrait/consultant_list.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  Row cetagories() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 5,
        ),
        Flexible(
          flex: 50,
          child: SizedBox(
            height: 40,
            width: 100,
            child: FittedBox(
              child: Text(
                'Cetagories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container swiper() {
    return Container(
      width: 40,
      height: 5,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
    );
  }

  Row consultant() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 5,
        ),
        Flexible(
          flex: 50,
          child: FittedBox(
            child: Text(
              'Consultants',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 430,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(
            flex: 2,
          ),
          Flexible(flex: 5, child: FittedBox(child: swiper())),
          const Spacer(
            flex: 5,
          ),
          Flexible(flex: 20, child: cetagories()),
          const Spacer(
            flex: 5,
          ),
          // ------------First Cetagory boxes
          Flexible(
            flex: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 11,
                ),
                Flexible(
                  flex: 30,
                  child: Cetagories_Containers(
                    color1: const Color.fromARGB(255, 131, 9, 0),
                    color2: const Color.fromARGB(255, 173, 26, 15),
                    color3: const Color.fromARGB(255, 197, 69, 60),
                    color4: const Color.fromARGB(255, 255, 124, 115),
                    name: 'Relationship',
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Flexible(
                  flex: 30,
                  child: Cetagories_Containers(
                    color1: const Color.fromARGB(255, 131, 109, 0),
                    color2: const Color.fromARGB(255, 173, 152, 15),
                    color3: const Color.fromARGB(255, 197, 181, 60),
                    color4: const Color.fromARGB(255, 255, 253, 115),
                    name: 'Career',
                  ),
                ),
                const Spacer(
                  flex: 10,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          // ------------Second Cetagory boxes
          Flexible(
            flex: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 11,
                ),
                Flexible(
                  flex: 30,
                  child: Cetagories_Containers(
                    color1: const Color.fromARGB(255, 0, 22, 131),
                    color2: const Color.fromARGB(255, 15, 49, 173),
                    color3: const Color.fromARGB(255, 60, 74, 197),
                    color4: const Color.fromARGB(255, 115, 136, 255),
                    name: 'Education',
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Flexible(
                  flex: 30,
                  child: Cetagories_Containers(
                    color1: const Color.fromARGB(255, 0, 131, 20),
                    color2: const Color.fromARGB(255, 15, 173, 62),
                    color3: const Color.fromARGB(255, 60, 197, 88),
                    color4: const Color.fromARGB(255, 115, 255, 150),
                    name: 'Others',
                  ),
                ),
                const Spacer(
                  flex: 10,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          Flexible(flex: 20, child: consultant()),
          const Spacer(
            flex: 10,
          ),
          Flexible(
            flex: 30,
            child: ConsultantList(
              personName: "Ibrahim Dr",
              image: 'assets/images/man.jpg',
            ),
          ),
          const Spacer(
            flex: 10,
          ),
          Flexible(
            flex: 30,
            child: ConsultantList(
              personName: "Alisha Dr",
              image: 'assets/images/cli_ent.jpg',
            ),
          )
        ],
      ),
    );
  }
}
