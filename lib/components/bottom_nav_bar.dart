import 'package:flutter/material.dart';

import '../constrants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
      ),
      height: 54,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.local_florist),
              highlightColor: kAccentColor.withOpacity(0.1),
              color: kAccentColor,
              splashRadius: 22,
              splashColor: kAccentColor.withOpacity(0.1),
              onPressed: () {},
            ),
          ),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.favorite_border),
              highlightColor: kAccentColor.withOpacity(0.1),
              color: kAccentColor,
              splashRadius: 22,
              splashColor: kAccentColor.withOpacity(0.1),
              onPressed: () {},
            ),
          ),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.person_outline),
              highlightColor: kAccentColor.withOpacity(0.1),
              color: kAccentColor,
              splashRadius: 22,
              splashColor: kAccentColor.withOpacity(0.1),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
