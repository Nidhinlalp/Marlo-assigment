import 'package:flutter/material.dart';

class AmountWidget extends StatelessWidget {
  const AmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Amount',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 45,
                  width: 150,
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 218, 243, 255),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Minimum',
                        hintStyle:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 234, 234, 234),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: 150,
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 218, 243, 255),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Maximum',
                        hintStyle:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 234, 234, 234),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
