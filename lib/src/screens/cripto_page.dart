import 'package:coincapapp/src/stores/main_store.dart';
import 'package:flutter/material.dart';
import 'package:coincapapp/src/screens/menu/menu.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CriptoPage extends StatelessWidget {
  final String id;
  const CriptoPage({Key key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mainStore = Provider.of<MainStore>(context);
    _mainStore.getCriptoData(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin App'),
      ),
      drawer: Menu(),
      body: Observer(
        builder: (_){
          if (_mainStore.hasResultsModel) {
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.account_circle, size: 150.0,),
                    SizedBox(width: 50.0,),
                    Column(
                      children: <Widget>[
                        Text('${_mainStore.model.name} (${_mainStore.model.symbol})', style: TextStyle(fontSize: 30.0),),
                        Text('29 July 2020', style: TextStyle(fontSize: 16.0), ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('HIGH')
                        ),
                        Expanded(
                          child: Text('\$1561')
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('HIGH'),
                        Text('\$1561')
                      ],
                    )
                  ],
                )
              ],
            );
          } else {
            return Container(
              child: Center(
                child: CircularProgressIndicator()
              ),
            );
          }
        }
      )
      
    );
  }
}