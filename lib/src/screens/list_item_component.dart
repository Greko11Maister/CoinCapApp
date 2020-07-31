import 'package:flutter/material.dart';

class ListItemComponent extends StatelessWidget {
  final current;
  final VoidCallback onTap;
  const ListItemComponent({Key key, @required this.current, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[900]),
      child: ListTile(
        leading: Image.network(current.getImage),
        title: Text("${current.name}"),
        subtitle: Text('${current.symbol}'),
        onTap: onTap,
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