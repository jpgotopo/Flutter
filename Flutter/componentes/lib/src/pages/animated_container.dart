import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {

  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
final _estiloAppBar = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular', color: Colors.black87);
// final _estiloFlatButton = new TextStyle (fontSize: 20, fontFamily: 'Dax-Regular', color: Colors.greenAccent);

  double _width = 20.0;
  double _heiht = 20.0;
  Color _color  = Colors.greenAccent;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container - cerbero.dev', style: _estiloAppBar,),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 10),
            _container1(),
            SizedBox(height: 10),
            _animatedContainer(),
            SizedBox(height: 10),
            _animatedContainer2(),
            SizedBox(height: 10),
            _animatedContainer3(),
            SizedBox(height: 10),
          ],
        ),
      ),

       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon( Icons.play_circle_filled, color: Colors.greenAccent, size: 45,),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma() {

    final random = Random();
    setState(() {
    _width = random.nextInt(150).toDouble();
    _heiht = random.nextInt(150).toDouble();
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1);

    _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble());
    });
  }

    Widget _container1() {
    return Container(
    padding: EdgeInsets.all(10),
    width: _width,
    height: _heiht,
    decoration: BoxDecoration(
      borderRadius: _borderRadius,
      color: _color,
    ),
  );
}

  Widget _animatedContainer() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: _width,
      height: _heiht,
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        color: _color,
      ),
    );
  }

  Widget _animatedContainer2() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.bounceOut,
      padding: EdgeInsets.all(10),
      width: _width,
      height: _heiht,
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        color: _color,
      ),
    );
  }

  Widget _animatedContainer3() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInExpo,
      width: _width,
      height: _heiht,
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        color: _color,
      ),
    );
  }

  
}

  