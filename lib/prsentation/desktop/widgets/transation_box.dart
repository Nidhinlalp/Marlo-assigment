import 'package:flutter/material.dart';

class TransactionBox extends StatelessWidget {
  const TransactionBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
                left: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
                right: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
              ),
              color: Color(0xFFEDEEF1),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "TRANSACTION",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "AMOUNT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "STATUS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "SOURCE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "CREATED AT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
                right: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
                bottom: BorderSide(
                  color: Color(0xFFDBDBDB),
                ),
              ),
            ),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.call_made_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text("Ship one pvt ltd")
                        ],
                      ),
                      const Text("\$1,236.00"),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.greenAccent,
                          ),
                          child: const Center(
                            child: Text('Processing'),
                          ),
                        ),
                      ),
                      const Text("Payout"),
                      const Text("Tue 16 May, 10:26 AM"),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
