import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learnlogin/components/rounded_icon_btn.dart';

import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.rating}) : super(key: key);

  final double rating;

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              icon: Icon(Icons.arrow_back),
              press: () => Navigator.pop(context),
              showShadow: true,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
