import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/screens/home/components/recommend_product.dart';
import 'package:furniture_app/services/fetchCategories.dart';
import 'package:furniture_app/services/fetchProducts.dart';
import 'package:furniture_app/size_config.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double defaultsize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultsize*2),
              child: TitleText(
                title: "Browse by Categories",
              ),
            ),
            FutureBuilder(
              future: fetchCategories(),
                builder: (context, snapshot) =>
                snapshot.hasData? Categories(
                  categories: snapshot.data,
                ) : Center(child: Image.asset("assets/ripple.gif"),)),
            Divider(height: 5,),
            Padding(
              padding: EdgeInsets.all(defaultsize*2),
              child: TitleText(title: "Recommends for you",),
            ),
            FutureBuilder(
              future: fetchProducts(),
                builder: (context,snapshot) {
                    return snapshot.hasData? Center(
                      child: RecommendProduct(
                      products: snapshot.data,
                ),
                    )
                :Center(
                      child: Image.asset("assets/ripple.gif"),);
              }
            )
          ],
        ),
      ),
    );
  }
}



