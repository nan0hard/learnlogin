import 'package:flutter/material.dart';
import 'package:learnlogin/components/default_button.dart';
import 'package:learnlogin/models/Product.dart';
import 'package:learnlogin/screens/details/components/color_dots.dart';
import 'package:learnlogin/screens/details/components/product_description.dart';
import 'package:learnlogin/screens/details/components/product_images.dart';
import 'package:learnlogin/screens/details/components/top_rounded_container.dart';
import 'package:learnlogin/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          ProductDescription(
            product: product,
            pressOnSeeMore: () {},
          ),
          TopRoundedContainer(
            color: Color(0xfff6f7f9),
            child: Column(
              children: [
                ColorDots(product: product),
                TopRoundedContainer(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenWidth(15),
                      bottom: getProportionateScreenWidth(40),
                      left: SizeConfig.screenWidth * 0.15,
                      right: SizeConfig.screenWidth * 0.15,
                    ),
                    child: DefaultButton(
                      press: () {},
                      text: "Add to Cart",
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
