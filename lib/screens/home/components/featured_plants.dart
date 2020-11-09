import 'package:flutter/material.dart';

import '../../../constrants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(right: kDefaultPadding),
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            imageUrl: 'assets/images/bottom_img_1.png',
            onPress: () {},
          ),
          FeaturePlantCard(
            imageUrl: 'assets/images/bottom_img_2.png',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.imageUrl,
    this.onPress,
  }) : super(key: key);

  final String imageUrl;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
