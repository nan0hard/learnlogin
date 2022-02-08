// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learnlogin/components/custom_bottom_navbar.dart';
import 'package:learnlogin/enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
