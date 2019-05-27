import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class InputPage extends StatefulWidget {


  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre;

  final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.greenAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Inputs Page | cerbero.dev ', style: _estiloAppBar,),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon( Icons.add_to_home_screen, color: Colors.blue,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          
          _crearInput(),
          _crearInput2(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        counter: Text('Letters ${_nombre.length}'),
        hintText: 'Name',
        labelText: 'Name',
        helperText: 'What Is Your Name',
        suffixIcon: Icon(Icons.accessibility_new, color: Colors.greenAccent,),
        icon: Icon(Icons.adb, color: Colors.greenAccent,),

      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
        
        
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Welcome $_nombre'),
    );
  }
}