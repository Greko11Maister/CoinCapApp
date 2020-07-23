import 'package:flutter/material.dart';

class ListItemComponent extends StatelessWidget {
  final current;
  const ListItemComponent({Key key, @required this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[900]),
      child: ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text("${current.name}"),
        subtitle: Text('${current.symbol}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('\$${current.getPrice}'),
            SizedBox(
              width: 30.0,
            ),
            Text('${current.getPorcent}%', style: TextStyle(color: current.getColor))

          ],
        ),
      ),
    );
  }
}