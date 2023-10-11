import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 85,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFDBDBDB),
              width: 1.0,
            ),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF242B4D),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/transactions.svg',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Transaction /",
                    style: TextStyle(
                      color: Color(0xFF242B4D),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 36.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFCEDEF9),
                    ),
                    child: const Center(
                      child: Text(
                        "MARLO",
                        style: TextStyle(
                          color: Color(0xFF2B7CFF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "HDFC · 5879",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 36.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1.0,
                        color: const Color.fromRGBO(43, 124, 255, 0.33),
                      ),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xFF2B7CFF),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Link account',
                            style: TextStyle(
                              color: Color(0xFF2B7CFF),
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 159.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFF46715),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'PAYOUT',
                        style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
