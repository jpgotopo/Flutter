import 'package:flutter/material.dart';



class InputPage extends StatefulWidget {


  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.greenAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Inputs Page | cerbero.dev ' , style: _estiloAppBar,),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon( Icons.add_to_home_screen, color: Colors.blue,),
        onPressed: (){
          Navigator.pop(context);
        },
    ),
    );
  }
}