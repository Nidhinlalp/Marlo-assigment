// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Flilter extends StatelessWidget {
  final bool contains;
  final String text;
  final String heading;
  const Flilter({
    Key? key,
    required this.contains,
    required this.text,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              heading,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: contains
                          ? const Color.fromARGB(255, 218, 243, 255)
                          : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                              color: contains
                                  ? const Color.fromARGB(255, 51, 185, 247)
                                  : Colors.grey,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: contains
                              ? const Color.fromARGB(255, 218, 243, 255)
                              : Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                text,
                                style: TextStyle(
                                    color: contains
                                        ? const Color.fromARGB(
                                            255, 51, 185, 247)
                                        : Colors.grey,
                                    fontSize: 13),
                              ),
                              const Icon(
                                Icons.close,
                                size: 13,
                                color: Color.fromARGB(255, 51, 185, 247),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
