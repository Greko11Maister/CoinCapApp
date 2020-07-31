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
            print(_mainStore.model.getMaxPrice);
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        child: Image.network(_mainStore.model.getImage),
                      ),
                      
                      SizedBox(width: 20.0,),
                      Column(
                        children: <Widget>[
                          Text('${_mainStore.model.name} (${_mainStore.model.symbol})', style: TextStyle(fontSize: 25.0),),
                          Text('29 July 2020', style: TextStyle(fontSize: 16.0), ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('HIGH', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                              Text('\$${_mainStore.model.getMaxPrice}', style: TextStyle(fontSize: 18))
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('AVERAGE', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                              Text('\$${_mainStore.model.getPrice}', style: TextStyle(fontSize: 18))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('LOW', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                              Text('\$1561', style: TextStyle(fontSize: 18))
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('CHANGE', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                              Text('${_mainStore.model.getPorcent}%', style: TextStyle(color: _mainStore.model.getColor))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Placeholder(fallbackHeight: 350, fallbackWidth: 200,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        color: Color.fromRGBO(24, 198, 131, 1),
                        onPressed: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('More Details', style: TextStyle(fontSize: 16),),
                        ),
                      ),
                    ),
                  )

                ],
              ),
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