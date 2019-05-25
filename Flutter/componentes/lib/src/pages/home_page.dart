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

      // print( menuProvider.opciones );
      // menuProvider.cargarData()
      return FutureBuilder(
        future: menuProvider.cargarData(),
        // initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

          // print( 'builder');
          


          return ListView(
          children: _listaItems( snapshot.data ),
          );

        },
      );

  }

    List<Widget>  _listaItems( List<dynamic> data) {


      final List<Widget> opciones = [];

      data.forEach((opt){

      
        final widgetTemp = ListTile(
         
         title: Text(opt['texto'], style: _estiloListTile,), 
         leading: Icon( Icons.adb, color: Colors.indigoAccent,),
         trailing: Icon( Icons.keyboard_arrow_right, color: Colors.indigoAccent,),
         onTap: (){

         }, 

         );
     
      opciones..add( widgetTemp)
              ..add( Divider() );


      });

      return opciones;


      }



  


}