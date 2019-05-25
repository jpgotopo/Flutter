import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {

final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.lime);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text('Alert Page | cerbero.dev ' , style: _estiloAppBar,),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lime,
        child: Icon( Icons.add_to_home_screen, color: Colors.redAccent,),
        onPressed: (){
          Navigator.pop(context);
        },
    ),
    );
  }
}