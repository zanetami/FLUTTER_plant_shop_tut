import 'package:flutter/material.dart';

import '../../../constrants.dart';

class BuyAndDescriptionBtns extends StatelessWidget {
  const BuyAndDescriptionBtns({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 60,
          child: FlatButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              ),
            ),
            color: kPrimaryColor,
            child: Text(
              'Buy now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            height: 60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
              ),
            ),
            child: Text('Description',
                style: TextStyle(
                  fontSize: 16,
                )),
          ),
        )
      ],
    );
  }
}
