import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/model/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultsize * 14.5,
        decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif",
                    image: product.image,
                    fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultsize),
                child: TitleText(
                  title: product.title,
                ),
              ),
              SizedBox(height: defaultsize/2,),
              Text("\$${product.price}"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}



