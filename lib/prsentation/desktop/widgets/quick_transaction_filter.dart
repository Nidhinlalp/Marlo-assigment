import 'package:flutter/material.dart';

class QuickTransactionFilter extends StatelessWidget {
  const QuickTransactionFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Transactions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.topLeft,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Text(
                  "Quick filters:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 36.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFCEDEF9),
                  ),
                  child: const Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "All",
                          style: TextStyle(
                            color: Color(0xFF2B7CFF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 36.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.0,
                      color: const Color.fromRGBO(43, 124, 255, 0.33),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.call_received_rounded,
                        color: Color(0xFF2B7CFF),
                      ),
                      Text("Credit"),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 36.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.0,
                      color: const Color.fromRGBO(43, 124, 255, 0.33),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.call_made_rounded,
                        color: Color(0xFF2B7CFF),
                      ),
                      Text("Debit"),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 36.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.0,
                      color: const Color.fromRGBO(43, 124, 255, 0.33),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text("Currencies"),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color(0xFF2B7CFF),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 36.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.0,
                      color: const Color.fromRGBO(43, 124, 255, 0.33),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text("Statuses"),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color(0xFF2B7CFF),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 36.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.0,
                      color: const Color.fromRGBO(43, 124, 255, 0.33),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text("Time range"),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color(0xFF2B7CFF),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 36.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.0,
                      color: const Color.fromRGBO(43, 124, 255, 0.33),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.attach_money_rounded,
                        color: Color(0xFF2B7CFF),
                      ),
                      VerticalDivider(),
                      Text("Min amount"),
                      VerticalDivider(),
                      Text("Max amount"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              height: 36.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1.0,
                  color: const Color.fromRGBO(43, 124, 255, 0.33),
                ),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Ellipse 10.png"),
                  ),
                  Text("USD"),
                  Icon(
                    Icons.close,
                    color: Color(0xFF2B7CFF),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 36.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1.0,
                  color: const Color.fromRGBO(43, 124, 255, 0.33),
                ),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                  ),
                  Text("GBP"),
                  Icon(
                    Icons.close,
                    color: Color(0xFF2B7CFF),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "Clear all",
              style: TextStyle(
                color: Color(0xFF2B7CFF),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    );
  }
}
