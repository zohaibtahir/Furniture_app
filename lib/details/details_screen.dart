import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/details/components/body.dart';
import 'package:furniture_app/model/product.dart';
import 'package:furniture_app/size_config.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;

  const DetailsScreen({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/bag.svg"),
          onPressed: (){},
        ),
        SizedBox(width: SizeConfig.defaultSize,),
      ],
    );
  }
}
