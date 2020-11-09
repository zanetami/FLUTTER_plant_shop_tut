import 'package:flutter/material.dart';
import 'package:shop_tut/screens/details/details_screen.dart';

import '../../../constrants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(right: kDefaultPadding),
      child: Row(
        children: [
          RecomendPlantCard(
            imageUrl: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    imageUrl: 'assets/images/image_1.png',
                    title: 'Samantha',
                    country: 'Russia',
                    price: 440,
                  ),
                ),
              );
            },
          ),
          RecomendPlantCard(
            imageUrl: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Poland',
            price: 560,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    imageUrl: 'assets/images/image_2.png',
                    title: 'Angelica',
                    country: 'Poland',
                    price: 560,
                  ),
                ),
              );
            },
          ),
          RecomendPlantCard(
            imageUrl: 'assets/images/image_3.png',
            title: 'Rachel',
            country: 'USA',
            price: 275,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    imageUrl: 'assets/images/image_3.png',
                    title: 'Rachel',
                    country: 'USA',
                    price: 275,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard(
      {Key key,
      this.imageUrl,
      this.title,
      this.country,
      this.price,
      this.onPress})
      : super(key: key);

  final String imageUrl, title, country;
  final int price;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(imageUrl),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
