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