import 'package:flutter/material.dart';
import 'package:learnlogin/models/Product.dart';
import 'components/custom_app_bar.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    //wtf is this line
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          rating: agrs.product.rating,
        ),
      ),
      body: Body(
        product: agrs.product,
      ),
    );
  }
}

//We also need to pass our product to our details screen
//And we use name route to create a argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
