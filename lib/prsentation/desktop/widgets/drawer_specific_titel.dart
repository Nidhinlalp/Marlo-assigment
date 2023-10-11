import 'package:flutter/material.dart';

class DrawerSpecificTitile extends StatelessWidget {
  final String titel;
  const DrawerSpecificTitile({
    Key? key,
    required this.titel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titel,
        style: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 0.4),
        ),
      ),
    );
  }
}
