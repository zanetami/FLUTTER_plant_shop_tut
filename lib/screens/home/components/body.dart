import 'package:flutter/material.dart';

import 'featured_plants.dart';
import 'recomend_plants.dart';
import 'title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', onPress: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', onPress: () {}),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
