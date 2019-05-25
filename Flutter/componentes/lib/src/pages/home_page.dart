import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.deepPurpleAccent);
  final _estiloListTile = new TextStyle (fontSize: 20, fontFamily: 'Dax-Regular', color: Colors.indigo);
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Componentes | cerbero.dev', style: _estiloAppBar,),
        centerTitle: true,
        ),
      body: _lista(),
    );
    }

    Widget _lista() {


      print( menuProvider.opciones );

      return ListView(
        children: _listaItems(),
      );

  }

    List<Widget>  _listaItems() {

      return [
        ListTile( onTap: (){}, title: Text('Hello World', style: _estiloListTile,) ),
        Divider(color: Colors.indigoAccent, ),
        ListTile( onTap: (){}, title: Text('Hello World', style: _estiloListTile,) ),
        Divider(color: Colors.indigoAccent, ),
        ListTile( onTap: (){}, title: Text('Hello World', style: _estiloListTile,) ),
        Divider(color: Colors.indigoAccent, ),
      ];

      }



  


}