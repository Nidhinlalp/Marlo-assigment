// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainGradiant extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String icon;
  final String text;
  const MainGradiant({
    Key? key,
    required this.color1,
    required this.color2,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 100,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: color2,
              child: Center(
                child: SvgPicture.asset(icon),
              ),
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}

Widget filterContainer1({required bool contains, required String text}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            contains ? const Color.fromARGB(255, 218, 243, 255) : Colors.white),
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
  );
}

Widget filterContainer2({required bool contains, required String text}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            contains ? const Color.fromARGB(255, 218, 243, 255) : Colors.white),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
      child: Center(
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  color: contains
                      ? const Color.fromARGB(255, 51, 185, 247)
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
  );
}

// Widget moneyInAndOutWidget(TransactionFilterProvider provider) {
//   return Container(
//     height: 90,
//     width: double.infinity,
//     decoration: BoxDecoration(
//         color: Colors.white, borderRadius: BorderRadius.circular(15)),
//     child: Padding(
//       padding: const EdgeInsets.all(12),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             "Money in and out - 2",
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   provider.moneyInOutFuntion(provider.moneyInOut[0]);
//                 },
//                 child: filterContainer1(
//                     contains:
//                         provider.moneyInOutadd.contains(provider.moneyInOut[0]),
//                     text: provider.moneyInOut[0]),
//               ),
//               const SizedBox(width: 10),
//               InkWell(
//                 onTap: () {
//                   provider.moneyInOutFuntion(provider.moneyInOut[1]);
//                 },
//                 child: filterContainer1(
//                     contains:
//                         provider.moneyInOutadd.contains(provider.moneyInOut[1]),
//                     text: provider.moneyInOut[1]),
//               ),
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }

// Widget statusesWidget(TransactionFilterProvider provider) {
//   return Container(
//     height: 120,
//     width: double.infinity,
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(15),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(12),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             'Statuses - 6',
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             children: [
//               InkWell(
//                   onTap: () {
//                     provider.statusFunction(provider.statuses[0]);
//                   },
//                   child: filterContainer1(
//                       contains:
//                           provider.statusAdd.contains(provider.statuses[0]),
//                       text: provider.statuses[0])),
//               const SizedBox(
//                 width: 8,
//               ),
//               InkWell(
//                   onTap: () {
//                     provider.statusFunction(provider.statuses[1]);
//                   },
//                   child: filterContainer1(
//                       contains:
//                           provider.statusAdd.contains(provider.statuses[1]),
//                       text: provider.statuses[1])),
//               const SizedBox(
//                 width: 8,
//               ),
//               InkWell(
//                   onTap: () {
//                     provider.statusFunction(provider.statuses[2]);
//                   },
//                   child: filterContainer1(
//                       contains:
//                           provider.statusAdd.contains(provider.statuses[2]),
//                       text: provider.statuses[2])),
//             ],
//           ),
//           Row(
//             children: [
//               InkWell(
//                   onTap: () {
//                     provider.statusFunction(provider.statuses[3]);
//                   },
//                   child: filterContainer1(
//                       contains:
//                           provider.statusAdd.contains(provider.statuses[3]),
//                       text: provider.statuses[3])),
//               const SizedBox(
//                 width: 8,
//               ),
//               InkWell(
//                   onTap: () {
//                     provider.statusFunction(provider.statuses[4]);
//                   },
//                   child: filterContainer1(
//                       contains:
//                           provider.statusAdd.contains(provider.statuses[4]),
//                       text: provider.statuses[4])),
//               const SizedBox(
//                 width: 8,
//               ),
//               InkWell(
//                   onTap: () {
//                     provider.statusFunction(provider.statuses[5]);
//                   },
//                   child: filterContainer1(
//                       contains:
//                           provider.statusAdd.contains(provider.statuses[5]),
//                       text: provider.statuses[5])),
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }

// Widget amountWidget(TransactionFilterProvider provider) {
//   return Container(
//     height: 100,
//     width: double.infinity,
//     decoration: BoxDecoration(
//         color: Colors.white, borderRadius: BorderRadius.circular(10)),
//     child: Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             'Amount',
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               SizedBox(
//                 height: 45,
//                 width: 150,
//                 child: TextField(
//                   controller: provider.minimumController,
//                   cursorColor: const Color.fromARGB(255, 218, 243, 255),
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                       hintText: 'Minimum',
//                       hintStyle:
//                           const TextStyle(fontSize: 12, color: Colors.grey),
//                       filled: true,
//                       fillColor: const Color.fromARGB(255, 234, 234, 234),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide.none)),
//                 ),
//               ),
//               SizedBox(
//                 height: 45,
//                 width: 150,
//                 child: TextField(
//                   controller: provider.maximumController,
//                   cursorColor: const Color.fromARGB(255, 218, 243, 255),
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                       hintText: 'Maximum',
//                       hintStyle:
//                           const TextStyle(fontSize: 12, color: Colors.grey),
//                       filled: true,
//                       fillColor: const Color.fromARGB(255, 234, 234, 234),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide.none)),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }
