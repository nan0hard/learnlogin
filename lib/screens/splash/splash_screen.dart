import 'package:flutter/material.dart';
import 'package:learnlogin/screens/splash/components/body.dart';
import 'package:learnlogin/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    //Have to Call it on our starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
