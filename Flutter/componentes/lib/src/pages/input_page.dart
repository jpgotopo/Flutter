import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre  =   '';
  String _email   =   '';
  String _fecha   =   '';

  String _opcionSeleccionada = 'Volar';

  List _poderes   = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

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
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
          Divider(),
          

        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
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
      
    );
  }






  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email, color: Colors.greenAccent,),
        icon: Icon(Icons.email, color: Colors.greenAccent,),

      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Welcome $_nombre'),
      subtitle: Text('Email is: $_email'),
      trailing: Text(_opcionSeleccionada),
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        hintText: 'Password',
        labelText: 'Pass',
        suffixIcon: Icon(Icons.security, color: Colors.greenAccent,),
        icon: Icon(Icons.lock_outline, color: Colors.greenAccent,),

      ),
      onChanged: (valor){
        setState(() {
          
        });
      },
    );
  }

  Widget _crearFecha( BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        hintText: 'Birthdate',
        labelText: 'Birthdate',
        suffixIcon: Icon(Icons.calendar_view_day, color: Colors.greenAccent,),
        icon: Icon(Icons.perm_contact_calendar, color: Colors.greenAccent,),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );
      },
    );
  }

  _selectDate( BuildContext context ) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate:  new DateTime.now(),
      firstDate:    new DateTime(2001),
      lastDate:     new DateTime(2025),
      locale:       Locale('es', 'ES')
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString(); 
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown(){

    List<DropdownMenuItem<String>> lista =new List();

    _poderes.forEach((poder){
      lista.add( DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
  return lista;
  }


  Widget _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox( width: 30),
        DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt){
            setState(() {
             _opcionSeleccionada = opt;
            });
          },
    )

      ],
      );
    
    
    
    
    

  }
}