import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.deepPurpleAccent);
  final _estiloListTile = new TextStyle (fontSize: 20, fontFamily: 'Dax-Regular', color: Colors.indigo);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        title: Text('Componentes | cerbero.dev', style: _estiloAppBar,),
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
          children: _listaItems( snapshot.data, context ),
          );
        },
      );
  }

    List<Widget>  _listaItems( List<dynamic> data, BuildContext context) {

      final List<Widget> opciones = [];

      data.forEach((opt){

        final widgetTemp = ListTile(
         
         title: Text(opt['texto'], style: _estiloListTile,), 
         leading: getIcon(opt['icon']),
         trailing: Icon( Icons.keyboard_arrow_right, color: Colors.indigoAccent,),
         onTap: (){

           final route = MaterialPageRoute(

             builder: (context) =>  AlertPage()
             
             );

           Navigator.push(context, route);

         }, 

         );
     
      opciones..add( widgetTemp)
              ..add( Divider() );


      });

      return opciones;


      }



  


}