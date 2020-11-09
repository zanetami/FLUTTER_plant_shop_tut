import 'package:flutter/material.dart';
import 'package:shop_tut/constrants.dart';

import 'buy_and_description_buttons.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          SizedBox(height: kDefaultPadding),
          BuyAndDescriptionBtns(size: size)
        ],
      ),
    );
  }
}
