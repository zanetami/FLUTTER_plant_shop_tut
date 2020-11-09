import 'package:flutter/material.dart';
import 'package:shop_tut/constrants.dart';

import 'buy_and_description_buttons.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.imageUrl,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String imageUrl, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(
            size: size,
            imageUrl: imageUrl,
          ),
          TitleAndPrice(
            title: title,
            country: country,
            price: price,
          ),
          SizedBox(height: kDefaultPadding),
          BuyAndDescriptionBtns(size: size)
        ],
      ),
    );
  }
}
