import 'package:flutter/material.dart';

import 'package:coincapapp/src/screens/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coin App'),
          
        ),
        drawer: Drawer(
          child: Center(
            child: ListView(
            padding: EdgeInsets.only(left: 25.0),
            children: <Widget>[
              SizedBox(
                height: 150.0,
              ),
              Text('Coins', style: TextStyle(fontSize: 16),),
              SizedBox(
                height: 40.0,
              ),
              Text('Exchange', style: TextStyle(fontSize: 16),),
              SizedBox(
                height: 20.0,
              ),
              Text('API', style: TextStyle(fontSize: 16),),
              SizedBox(
                height: 20.0,
              ),
              Text('Settings', style: TextStyle(fontSize: 16),),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
          )
          
          
        ),
        body: HomePage(),
      ),
    );
  }
}