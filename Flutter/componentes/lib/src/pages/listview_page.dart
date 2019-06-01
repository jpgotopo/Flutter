import 'package:flutter/material.dart';




class ListaPage extends StatefulWidget {
@override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  //List<int> _listaNumeros = [1,2,3,4,5,6];
  List<String> _listaCategoria = ['DOG','CAT','TIGER','LION','HORSE'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Listas | cerbero.dev'),
         ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {

    return ListView.builder(
      itemCount: _listaCategoria.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _listaCategoria[index];
        return FadeInImage(
          image: NetworkImage('https://source.unsplash.com/random/?{$imagen}'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }


}