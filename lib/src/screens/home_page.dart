import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

       child: ListView(
         children: <Widget>[
          Container(
             decoration: BoxDecoration(color: Colors.black),
             child: ListTile(
              title: Text('Name', style: TextStyle(fontSize: 16,),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Price', style: TextStyle(fontSize: 16,),),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text('(24Hrs)', style: TextStyle(fontSize: 16,),),

                ],
              ),
            ),
          ),
          Container(
             decoration: BoxDecoration(color: Colors.grey[900]),
             child: ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Bitcoin'),
              subtitle: Text('BTC'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('\$87456'),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text('-5454%', style: TextStyle(color: Colors.red))

                ],
              ),
            ),
          ),
           
          
          


         ],
       ),
       
    );
  }
}