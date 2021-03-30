import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final text;
  final sizedBoxHeigth;
  final style = const TextStyle(fontSize: 16);
  const MenuItem({@required this.text, this.sizedBoxHeigth = 20.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox( height: sizedBoxHeigth ),
        Text(this.text, style:style)
      ],
    );
  }
}