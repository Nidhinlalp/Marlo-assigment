import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 238, 237),
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
          ),
        ],
      ),
      child: const SizedBox(
        width: 35,
        height: 37,
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.filter_alt_rounded,
            color: Color.fromARGB(255, 157, 158, 158),
          ),
        ),
      ),
    );
  }
}
