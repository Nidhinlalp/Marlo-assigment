import 'package:flutter/material.dart';
import 'package:transaction_app/prsentation/desktop/widgets/drawer_item.dart';
import 'package:transaction_app/prsentation/desktop/widgets/drawer_specific_titel.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView(
        children: [
          Container(
            color: const Color(0xFF242B4D),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 80,
                      color: const Color(0xFF393F5C),
                      child: const Center(
                        child: Text(
                          'Submit KYC (10%)  >',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const LinearProgressIndicator(
                      value: 0.3,
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DrawerItems(
                        icons: 'assets/icons/home.svg',
                        title: 'Home',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/transactions.svg',
                        title: 'Transactions',
                        color: Color(0xFF415094),
                      ),
                      DrawerSpecificTitile(
                        titel: 'ESSENTIALS',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/pay.svg',
                        title: 'Pay',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/cards.svg',
                        title: 'Cards',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/contacts.svg',
                        title: 'Contacts',
                      ),
                      DrawerSpecificTitile(
                        titel: 'MARITIME',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/contracts.svg',
                        title: 'Contracts',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/vessels.svg',
                        title: 'Vessels',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/marketrates.svg',
                        title: 'Market rates',
                      ),
                      DrawerSpecificTitile(
                        titel: 'UTILITIES',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/receivables.svg',
                        title: 'Receivables',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/payable.svg',
                        title: 'Payables',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/accounting.svg',
                        title: 'Accounting',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/reports.svg',
                        title: 'Reports',
                      ),
                      DrawerSpecificTitile(
                        titel: 'FINANCING',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/loans.svg',
                        title: 'Loans',
                      ),
                      DrawerSpecificTitile(
                        titel: 'TOOLS',
                      ),
                      DrawerItems(
                        icons: 'assets/icons/apps.svg',
                        title: 'Apps',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
