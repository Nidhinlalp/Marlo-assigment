import 'package:flutter/material.dart';
import 'package:transaction_app/prsentation/desktop/widgets/add_new_botton.dart';

class HorizontalMainCardList extends StatelessWidget {
  const HorizontalMainCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MainCards(
              amount: "15,256,486,.00",
              image: 'Ellipse 1.png',
              contries: 'GBP',
              subject: 'Main',
            ),
            SizedBox(width: 20),
            MainCards(
              amount: '0.00',
              subject: 'Salary',
              image: 'Ellipse 10.png',
              contries: 'USD',
            ),
            SizedBox(width: 20),
            MainCards(
              amount: '0.00',
              contries: 'EUR',
              image: 'european union.png',
              subject: 'Salary',
            ),
            SizedBox(width: 20),
            MainCards(
              image: 'european union.png',
              amount: '15,256,486.00',
              subject: 'Salary',
              contries: 'EUR',
            ),
            SizedBox(width: 20),
            MainCards(
              image: 'singapore.png',
              amount: '15,256,486.00',
              subject: 'Salary',
              contries: 'SGD',
            ),
            SizedBox(width: 20),
            MainCards(
              image: 'singapore.png',
              amount: '15,256,486.00',
              subject: 'Salary',
              contries: 'SGD',
            ),
            SizedBox(width: 20),
            AddNewBotton(),
          ],
        ),
      ),
    );
  }
}
