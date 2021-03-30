import 'package:coincapapp/src/screens/cripto_page.dart';
import 'package:coincapapp/src/screens/list_item_component.dart';
import 'package:coincapapp/src/stores/main_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _mainStore = Provider.of<MainStore>(context);
    _mainStore.getData();
    return Observer(
      builder: (_) {
        if(!_mainStore.hasResults){
          return Container(
            child: Center(
              child: CircularProgressIndicator()
            ),
          );
        }
        if (_mainStore.hasResults) {
          return Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Name', style: TextStyle(fontSize: 16,),),
                    SizedBox(
                      width: 220.0,
                    ),
                    Text('Price', style: TextStyle(fontSize: 16,),),
                    SizedBox(
                      width: 30.0,
                    ),
                    Text('(24Hrs)', style: TextStyle(fontSize: 16,),),
                  ],
                )
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _mainStore.lista.length,
                  itemBuilder: (_, int index) {
                    var current = _mainStore.lista[index];

                    return ListItemComponent(
                      current: current,
                      onTap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => CriptoPage(id: current.id))
                        );
                      }
                    );
                  }
                )
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
    );
  }
}