import 'package:flutter/material.dart';
import 'package:infopeli/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Info Peli',
      initialRoute: '/',
      routes: {
        '/'   : (BuildContext context) => HomePage(),
      },
    );
  }
}