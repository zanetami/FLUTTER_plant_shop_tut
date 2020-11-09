import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
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
    return Scaffold(
      body: Body(
          imageUrl: imageUrl, title: title, country: country, price: price),
    );
  }
}
