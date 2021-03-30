import 'package:flutter/material.dart';

import 'menu_item.dart';

class Menu extends StatelessWidget {
  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 25.0),
          children: [
            MenuItem(text: 'Coins', sizedBoxHeigth: 150.0,),
            MenuItem(text: 'Exchange', sizedBoxHeigth: 40.0,),
            MenuItem(text: 'API'),
            MenuItem(text: 'Settings'),
          ]
        )
      ),
    );
  }
}