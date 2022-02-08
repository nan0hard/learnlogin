// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learnlogin/constants.dart';
import 'package:learnlogin/screens/otp/components/otp_form.dart';
import 'package:learnlogin/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Text(
                  'OTP Verification',
                  style: headingStyle,
                ),
                Text(
                  'We sent your code to +1 898 860 ****',
                ),
                buildTimer(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.15,
                ),
                OtpForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                GestureDetector(
                  onTap: () {
                    //Resend your OTP
                  },
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will be expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 121.0, end: 0.0),
          duration: Duration(minutes: 2),
          builder: (_, dynamic value, child) => Text(
            "${value.toInt()}s",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
