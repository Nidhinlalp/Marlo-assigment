import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/controller/transaction_controller.dart';
import 'package:transaction_app/prsentation/mobile/transaction/all_transaction.dart';
import 'package:transaction_app/prsentation/widgets/bottom_nav.dart';
import 'package:transaction_app/prsentation/widgets/grandiant_card.dart';
import 'package:transaction_app/prsentation/widgets/maincart.dart';
import 'package:transaction_app/prsentation/widgets/transaction_list.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TransactionFilterProvider>(context, listen: false)
          .fetchTransactionData();
    });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 253, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 253, 255),
        leading: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 253, 164, 48),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: const Color.fromARGB(255, 175, 95, 4),
              ),
            ),
            child: const Center(
              child: Text(
                "JB",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_sharp,
              color: Colors.blue,
              size: 30,
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const ManiCard(
                      image: "assets/images/Ellipse 1.png",
                      subtitle: "15,256,486.00",
                      title: "British pound",
                    );
                  } else if (index == 1) {
                    return const ManiCard(
                      image: "assets/images/Ellipse 10.png",
                      subtitle: "20,443,776.00",
                      title: "Us dollar",
                    );
                  } else {
                    return const ManiCard(
                      image: "assets/images/Ellipse 10 (1).png",
                      subtitle: "18,543,990.00",
                      title: "Canada",
                    );
                  }
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "To do 4",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 140,
              child: GradiantCard(),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    const Text(
                      "All transactions",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const AllTransactions(),
                          ),
                        );
                      },
                      child: const Text(
                        "See all",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const TransactionList(),
          ],
        ),
      ),
    );
  }
}
