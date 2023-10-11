import 'package:flutter/material.dart';

class PagenitionButton extends StatelessWidget {
  const PagenitionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFE6E7E9),
          ),
          child: const Row(
            children: [
              Text("10"),
              Spacer(),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          "Next  >",
          style: TextStyle(
            color: Color(0xFF2B7CFF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
