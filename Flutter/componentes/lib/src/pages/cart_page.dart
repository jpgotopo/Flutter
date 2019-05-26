import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.yellowAccent);
final _estiloFlatButton = new TextStyle (fontSize: 20, fontFamily: 'Dax-Regular', color: Colors.deepPurpleAccent);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards | cerbero.dev', style: _estiloAppBar,),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellowAccent,
        child: Icon( Icons.add_to_home_screen, color: Colors.deepPurpleAccent,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1()
        ],
      ),
    );
  }

  _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.phonelink, color: Colors.deepPurpleAccent, size: 40,),
            title: Text('My name is Pierre Guillen'),
            subtitle: Text('Web & Mobile developer in Flutter. Skills: Flutter, Angular, IONIC, PHP, JavaScript, HTML5, CSS3.'),
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(horizontal: 36)),
              FlatButton(
                child: Text('Cancelar', style: _estiloFlatButton,),
                onPressed: (){},
                color: Colors.yellowAccent,
              ),
              Padding(padding: EdgeInsets.all(10)),
              FlatButton(
                child: Text('Ok', style: _estiloFlatButton,),
                onPressed: (){},
                color: Colors.yellowAccent,
              ),
              Padding(padding: EdgeInsets.all(10)),
          
          ],
          )
        ],
        ),
    );


  }
}