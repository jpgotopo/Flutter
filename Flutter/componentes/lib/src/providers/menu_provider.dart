import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider(){
    cargarData();
  }

  void cargarData() {

    rootBundle.loadString('data/menu_opts.json')
    .then( (data){

      Map dataMap = json.decode( data );
      print( dataMap ['rutas'] );
      opciones = dataMap['rutas'];
    });


  }


}

final menuProvider = new _MenuProvider();

