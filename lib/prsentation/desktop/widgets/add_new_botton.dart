import 'package:flutter/material.dart';

class AddNewBotton extends StatelessWidget {
  const AddNewBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148.0,
      height: 152.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFDBDBDB),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(9.59),
        color: Colors.white,
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFEDEEF1),
                  radius: 30,
                  child: Center(
                    child: Icon(
                      Icons.add_outlined,
                      size: 25,
                      color: Color(0xFF838D96),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Add new',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Global account',
              style: TextStyle(
                color: Color(0xFF6A6A6C),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MainCards extends StatelessWidget {
  final String image;
  final String contries;
  final String amount;
  final String subject;
  const MainCards({
    Key? key,
    required this.image,
    required this.contries,
    required this.amount,
    required this.subject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148.0,
      height: 152.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFDBDBDB),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(9.59),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/images/$image',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Text(
                    contries,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              amount,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subject,
              style: const TextStyle(
                color: Color(0xFF6A6A6C),
              ),
            )
          ],
        ),
      ),
    );
  }
}
