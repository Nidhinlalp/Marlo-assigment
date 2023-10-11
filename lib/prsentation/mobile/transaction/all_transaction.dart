// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:transaction_app/prsentation/mobile/transaction/widgets/filter_bootomsheet.dart';
import 'package:transaction_app/prsentation/widgets/custom_box.dart';
import 'package:transaction_app/prsentation/widgets/transaction_list.dart';

class AllTransactions extends StatelessWidget {
  const AllTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 253, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 247, 253, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kIsWeb ? 25.0 : 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transactions',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    height: 40,
                    child: CupertinoTextField(
                      placeholder: 'Search vessel',
                      controller: searchcontroller,
                      onChanged: (value) {},
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9EEF0),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: const Color(0xFFE9EEF0),
                          width: 2.0,
                        ),
                      ),
                      suffix: const Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      filtterBottomSheet(context);
                    },
                    child: const CustomBox(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {},
                      ),
                    );
                  },
                  itemCount: 10,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const Expanded(
              child: TransactionList(),
            )
          ],
        ),
      ),
    );
  }
}

class FlilterCeckBox extends StatelessWidget {
  final String image;
  final String head;
  final String subHead;
  const FlilterCeckBox({
    Key? key,
    required this.image,
    required this.head,
    required this.subHead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 1.0, color: Colors.grey),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          value: false,
          onChanged: (value) {},
        ),
        CircleAvatar(
          radius: 23,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              head,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subHead,
              style: const TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }
}
      
         

  //   date range picker

  
    

  

