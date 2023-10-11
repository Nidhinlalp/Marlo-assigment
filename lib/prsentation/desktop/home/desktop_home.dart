import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transaction_app/prsentation/desktop/side_menu/side_drawer.dart';
import 'package:transaction_app/prsentation/desktop/widgets/header.dart';
import 'package:transaction_app/prsentation/desktop/widgets/hori_zontal_main_card_list.dart';
import 'package:transaction_app/prsentation/desktop/widgets/pagenition_button.dart';
import 'package:transaction_app/prsentation/desktop/widgets/quick_transaction_filter.dart';
import 'package:transaction_app/prsentation/desktop/widgets/transation_box.dart';

class DeskTopHome extends StatelessWidget {
  const DeskTopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF242B4D),
        title: SvgPicture.asset('assets/icons/Frame.svg'),
        actions: [
          Row(
            children: [
              const Text(
                "MARLO TECNOLOGIES",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            const SideDrawer(),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: ListView(
                  children: const [
                    Header(),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              HorizontalMainCardList(),
                              SizedBox(height: 30),
                              QuickTransactionFilter(),
                              SizedBox(height: 30),
                              TransactionBox(),
                              SizedBox(height: 20),
                              PagenitionButton()
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
