import 'package:flutter/material.dart';
import 'package:transaction_app/prsentation/desktop/home/desktop_home.dart';
import 'package:transaction_app/prsentation/mobile/home/mobile_home.dart';
import 'package:transaction_app/prsentation/widgets/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileHome(),
        desktopBody: DeskTopHome(),
      ),
    );
  }
}
