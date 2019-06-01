import 'package:flutter/material.dart';




class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sliders | cerbero.dev'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
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
      onChanged: (valor){

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
}