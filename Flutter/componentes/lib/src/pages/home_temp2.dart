// import 'dart:collection';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular');
  final _estiloListTile = new TextStyle (fontSize: 28, fontFamily: 'Dax-Regular');
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho', 'Nueve', 'Diez',
                    'Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho', 'Nueve', 'Diez'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
        title: Text('Componentes - Temp | cerbero.dev', style: _estiloAppBar,),
      ),
        body: ListView(
          //children: _crearItems()
          children: _crearItemsCorto()


        ),
      );
  }

  //List<Widget> _crearItems(){
  //  List<Widget> lista = new List<Widget>();
  //  for (String opt in opciones) {
  //    
  //    final tempWidget = ListTile(
  //      title: Text( opt , style: _estiloListTile),
  //    );
  //    lista.add(tempWidget);
  //    lista.add(Divider(color: Colors.indigoAccent, ));
  //  }
  //  return lista;
  //}

List<Widget> _crearItemsCorto() {

  var widgets = opciones.map(  (item){

    return Column(
      children: <Widget>[
        ListTile(
          title: Text( item + '!', style: _estiloListTile),
          subtitle: Text('cerbero.dev'),
          leading: Icon( Icons.adb),
          trailing: Icon( Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        Divider(color: Colors.indigoAccent, )
      ],
    );

  }).toList();

return widgets;
}


}