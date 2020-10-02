import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/model/product.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultsize*1.5),
      height: defaultsize * 37.5,
      width: defaultsize * (SizeConfig.orientation == Orientation.landscape ? 35 :15),
      color: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              product.category.toUpperCase(),
              style: lightTextStyle,
            ),
            SizedBox(height: defaultsize,),
            Text(
              product.title,
              style: TextStyle(
                fontSize: defaultsize * 2.4,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
            ),
            SizedBox(height: defaultsize *2,),
            Text("Form",style: lightTextStyle,),
            Text("\$${product.price}",
              style: TextStyle(
                fontSize: defaultsize*1.6,
                fontWeight: FontWeight.bold,
                height: 1.6,
              ),
            ),
            SizedBox(height: defaultsize*2,),
            Text("Available colors",style: lightTextStyle,),
            Row(
              children: [
                buildColorBox(
                  defaultsize,
                  color: Color(0xFF7BA275),
                  isActive: true,),
                buildColorBox(
                  defaultsize,
                  color: Color(0xFFD7D7D7),),
                buildColorBox(
                  defaultsize,
                  color: kTextColor,),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildColorBox(double defaultsize,{Color color,bool isActive=false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultsize,right: defaultsize),
      padding: const EdgeInsets.all(5),
      height: defaultsize*2.4,
      width: defaultsize*2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg"): SizedBox(),
    );
  }
}