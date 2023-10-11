import 'package:flutter/material.dart';
import 'package:transaction_app/prsentation/widgets/comon_widget.dart';

class GradiantCard extends StatelessWidget {
  const GradiantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return const MainGradiant(
              color1: Color.fromARGB(255, 245, 245, 245),
              color2: Color.fromARGB(255, 210, 186, 238),
              icon: 'assets/icons/Vector (3).svg',
              text: 'Verify your business documents',
            );
          } else if (index == 1) {
            return const MainGradiant(
              color1: Color.fromARGB(255, 245, 245, 245),
              color2: Color.fromARGB(255, 255, 206, 161),
              icon: 'assets/icons/Vector (2).svg',
              text: 'Verify your identity',
            );
          } else if (index == 2) {
            return const MainGradiant(
              color1: Color.fromARGB(255, 231, 238, 237),
              color2: Color.fromARGB(255, 99, 201, 241),
              icon: 'assets/icons/Vector (1).svg',
              text: 'Open a Morlo business account',
            );
          } else if (index == 3) {
            return const MainGradiant(
              color1: Color.fromARGB(255, 236, 253, 242),
              color2: Color.fromARGB(255, 97, 230, 104),
              icon: 'assets/icons/Vector.svg',
              text: 'Get prequalified',
            );
          }
          return null;
        },
        itemCount: 4,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
