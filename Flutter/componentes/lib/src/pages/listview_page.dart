import 'dart:async';

import 'package:flutter/material.dart';




class ListaPage extends StatefulWidget {
@override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
 // List<String> _listaCategoria = ['DOG','CAT','TIGER','LION','HORSE'];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener((){

      if ( _scrollController.position.pixels == _scrollController.position.maxScrollExtent){
      //_agregar10();
      fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Listas | cerbero.dev'),
         ),
      body: Stack(
        children: <Widget>[
            _crearLista(),   
            _crearLoading(), 
        ],
      )
      
      
      
    );
  }

  Widget _crearLista() {

    return 
        //ListView.builder(
        //  itemCount: _listaNumeros.length,
        //  itemBuilder: (BuildContext context, int index){
        //    final imagen = _listaNumeros[index];
        //    return FadeInImage(
        //      image: NetworkImage('https://picsum.photos/500/300?imagen=$imagen'),
        //      placeholder: AssetImage('assets/jar-loading.gif'),
        //    );
        //  },
        //);
        ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index){
            final imagen = _listaNumeros[index];
            return FadeInImage(
              image: NetworkImage('https://source.unsplash.com/random/400x200/?{DOG}/$imagen'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            );
          },
        );

  }

  _agregar10() {
    for (var i = 500; i < 525; i++){
      _ultimoItem++;
      _listaNumeros.add( _ultimoItem );

    }

    setState(() {
      
    });
  }



    Future<Null> fetchData() async {

      _isLoading = true;
      setState(() {});

    final duration= new Duration(seconds:  2);
    return new Timer( duration, respuestaHTTP );

    }

    
  

  void respuestaHTTP(){

    _isLoading = false;
    _agregar10();
  }

  Widget _crearLoading() {

    if ( _isLoading){
      return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
      )
      ],
      );
    }
  }


}