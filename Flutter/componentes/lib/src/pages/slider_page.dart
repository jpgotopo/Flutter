import 'package:flutter/material.dart';




class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100;
  bool _bloquearCheck = false;

final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sliders | cerbero.dev', style: _estiloAppBar,),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        ),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon( Icons.add_to_home_screen, color: Colors.blueGrey,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckbox(),
              _crearSwich(),
              Expanded(
                child: _crearImagen(),
              ),
            ],
          )
        )
        );
  }

  _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la Imagen',
      //divisions: 20,

      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( _bloquearCheck ) ? null : (valor){

        setState(() {
        _valorSlider = valor;  
        });

        
      },
    );
  }

  _crearImagen() {

    return Image(
      image: NetworkImage('https://cdne.ojo.pe/redactor/uploads/2018/05/27/foto%20de%20francisco%20bolegnesi.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    
    );

  }

  _crearCheckbox() {

    //return Checkbox(
    //  value: _bloquearCheck,
    //  onChanged: (valor){
    //    setState(() {
    //      _bloquearCheck = valor;
    //    });
    //  },
    //);

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );
  }

  _crearSwich() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );
  }
}