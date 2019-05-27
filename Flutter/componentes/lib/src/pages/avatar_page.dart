import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.redAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lime,
        title: Text('Avatar Page | cerbero.dev ' , style: _estiloAppBar,),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(1.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/cerberodev.png'),
              radius: 32.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('PG'),
              backgroundColor: Colors.redAccent,
              radius: 32.0,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: AssetImage('assets/cerberodev.png'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
          width: 300,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon( Icons.add_to_home_screen, color: Colors.lime,),
        onPressed: (){
          Navigator.pop(context);
        },
    ),
    );
  }
}