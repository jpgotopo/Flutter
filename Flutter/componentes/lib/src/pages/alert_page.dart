import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {

final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.lime);
final _estiloBodyText = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.redAccent);
final _borderButton = new RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20),);
final _borderAlert = new RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20),);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text('Alert Page | cerbero.dev ' , style: _estiloAppBar,),
      ),
      body: Center(
        child: RaisedButton(
        child: Text('cerbero.dev', style: _estiloBodyText,),
        color: Colors.lime,
        // podria ir un textColor: Colors.redaccent
        shape: _borderButton,
        onPressed: () => _mostrarAlert(context),
        ),
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

  void _mostrarAlert(BuildContext context ){

    showDialog(

      context: context,
      barrierDismissible: true, // sirve para poder salir de la alerta
      builder: (context) {

        return AlertDialog(
          shape: _borderAlert,
          title: Text('Alert - cerbero.dev'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Widget de alerta, desarrollado por Pierre Guillen'),
              SizedBox(height: 20),
              Image.asset('assets/cerberodev.png', width: 100,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
                child: Text('Ok', style: _estiloBodyText),
                onPressed: (){Navigator.of(context).pop();},
                color: Colors.lime,
                shape: _borderButton,
              ),
              FlatButton(
                child: Text('Cancelar', style: _estiloBodyText),
                onPressed: () => Navigator.of(context).pop(),
                color: Colors.lime,
                shape: _borderButton,
              ),
          ],
        );
      }

    );
  }




}