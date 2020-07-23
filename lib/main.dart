import 'package:coincapapp/src/screens/menu/menu.dart';
import 'package:coincapapp/src/stores/main_store.dart';
import 'package:flutter/material.dart';

import 'package:coincapapp/src/screens/home_page.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Provider(
        create: (_) => MainStore(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Coin App'),
            
          ),
          drawer: Menu(),
          body: HomePage(),
        ),
      )
    );
  }

}