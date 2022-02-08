import 'package:flutter/material.dart';
import 'package:learnlogin/routes.dart';
import 'package:learnlogin/screens/profile/profile_screen.dart';
import 'package:learnlogin/screens/splash/splash_screen.dart';
import 'package:learnlogin/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,

      routes: routes,
    );
  }
}
