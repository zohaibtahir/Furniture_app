import 'package:flutter/material.dart';
import 'package:furniture_app/model/product.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product, this.press,
  }) : super(key: key);

  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    return Container(
      constraints: BoxConstraints(minHeight: defaultsize*44),
      padding: EdgeInsets.only(
        top: defaultsize * 9,
        left: defaultsize *2,
        right: defaultsize*2,
      ),
      //height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(defaultsize*1.2),
            topRight: Radius.circular(defaultsize*1.2),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: defaultsize *1.8,
            ),
          ),
          SizedBox(height: defaultsize*3,),
          Text(
            product.description,
            style: TextStyle(
              color: kTextColor.withOpacity(0.7),
              height: 1.8,
            ),
          ),
          SizedBox(height: defaultsize*3,),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              padding: EdgeInsets.all(defaultsize *1.5),
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: press,
              child: Text(
                "Add to cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: defaultsize *1.6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


