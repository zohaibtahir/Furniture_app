import 'package:flutter/material.dart';

import '../size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key key,
    this.title,
  }) : super(key:key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: defaultsize * 1.6, //16,
              fontWeight: FontWeight.bold,
            ),)
        ],
      ),
    );
  }
}