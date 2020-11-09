import 'package:flutter/material.dart';

import './../../components/bottom_nav_bar.dart';
import 'components/body.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        splashRadius: 25,
        onPressed: () {},
      ),
    );
  }
}
