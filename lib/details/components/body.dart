import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/details/components/product_description.dart';
import 'package:furniture_app/details/components/product_info.dart';
import 'package:furniture_app/model/product.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: SizeConfig.orientation== Orientation.landscape ? SizeConfig.screenWidth : SizeConfig.screenHeight - AppBar().preferredSize.height,
          child: Stack(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              ProductInfo( product: product),
              Positioned(
                top: defaultsize*37.5,
                left: 0,
                right: 0,
                child: ProductDescription(product: product,
                press: (){

                },),
              ),
              Positioned(
                top: defaultsize*9.5,
                  right: -defaultsize*7.5,
                  child: Hero(
                    tag: product.id,
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                      height: defaultsize *37.5,
                      width:  defaultsize * 36.5,),
                  ),

              )
            ],
          ),
        ),
    );
  }
}

