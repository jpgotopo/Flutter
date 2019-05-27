import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.yellowAccent);
final _estiloFlatButton = new TextStyle (fontSize: 20, fontFamily: 'Dax-Regular', color: Colors.deepPurpleAccent);
final _borderButton = new RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20),);


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
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
          _cardTipo1(),
          SizedBox(height: 10),
          _cardTipo2(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(20),
      ),
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
                shape: _borderButton,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              FlatButton(
                child: Text('Ok', style: _estiloFlatButton,),
                onPressed: (){},
                color: Colors.yellowAccent,
                shape: _borderButton,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
          
          ],
          )
        ],
        ),
    );


  }

  Widget _cardTipo2() {

    final card = Container(
    
      // clipBehavior: Clip.antiAlias,
      //shape: RoundedRectangleBorder(
      //  borderRadius:  BorderRadius.circular(20),
      //),
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage( 'http://www.miguelclaro.com/wp/wp-content/uploads/2013/07/AndromedaAirGlow-Pano1785-net.jpg' ),
            placeholder: AssetImage( 'assets/jar-loading.gif' ),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            width: 500,
            fit: BoxFit.cover,
          ),

          //Image(
          //  image: NetworkImage('http://www.miguelclaro.com/wp/wp-content/uploads/2013/07/AndromedaAirGlow-Pano1785-net.jpg'),
          //),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Andromeda'),
          
          
            ),
        ],
        ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.deepPurpleAccent,
        boxShadow: <BoxShadow>[
          BoxShadow( // Para poner Sombras
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );


  }
}