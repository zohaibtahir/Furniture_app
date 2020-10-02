import 'package:flutter/material.dart';
import 'package:furniture_app/details/details_screen.dart';
import 'package:furniture_app/model/product.dart';
import 'package:furniture_app/screens/home/components/product_card.dart';

import '../../../size_config.dart';

class RecommendProduct extends StatelessWidget {
  const RecommendProduct({
    Key key,
    this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultsize*2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: SizeConfig.orientation == Orientation.portrait? 2: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.693),
          itemBuilder:(context, index)=>
              ProductCard(
                product: products[index],
                press: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>
                                DetailsScreen(product: products[index],)
                        ));
                },)),
    );
  }
}