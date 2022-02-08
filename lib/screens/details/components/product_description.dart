// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learnlogin/models/Product.dart';
import 'package:learnlogin/screens/details/components/top_rounded_container.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return TopRoundedContainer(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Text(
              product.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(
                getProportionateScreenWidth(15),
              ),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                  color: product.isFavourite
                      ? Color(0xffffe6e6)
                      : Color(0xfff5f6f9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color:
                    product.isFavourite ? Color(0xffff4848) : Color(0xffdbdee4),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64),
            ),
            child: Text(
              product.description,
              maxLines: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20), vertical: 10),
            child: GestureDetector(
              onTap: pressOnSeeMore,
              child: Row(
                children: [
                  Text(
                    "See More Detail",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: kPrimaryColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
