import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItems extends StatelessWidget {
  final String icons;
  final String title;
  final Color color;
  const DrawerItems({
    Key? key,
    required this.icons,
    required this.title,
    this.color = const Color(0xFF242B4D),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: SvgPicture.asset(
          icons,
          color: Colors.white,
        ),
      ),
    );
  }
}
