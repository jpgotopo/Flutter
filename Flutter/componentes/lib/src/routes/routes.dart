import 'package:Componentes/src/pages/alert_page.dart';
import 'package:Componentes/src/pages/animated_container_page.dart';
import 'package:Componentes/src/pages/avatar_page.dart';
import 'package:Componentes/src/pages/card_page.dart';
import 'package:Componentes/src/pages/home_page.dart';
import 'package:Componentes/src/pages/input_page.dart';
import 'package:Componentes/src/pages/listview_page.dart';
import 'package:Componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';



Map<String, WidgetBuilder> getApplicationRoutes(){

return <String, WidgetBuilder>{
  '/'                 : (BuildContext context ) => HomePage(),
  'alert'             : (BuildContext context ) => AlertPage(),
  'avatar'            : (BuildContext context ) => AvatarPage(),
  'card'              : (BuildContext context ) => CardPage(),
  'animatedContainer' : (BuildContext context ) => AnimatedContainerPage(),
  'inputs'            : (BuildContext context) => InputPage(), 
  'slider'            : (BuildContext context) => SliderPage(),
  'lista'            : (BuildContext context) => ListaPage(),  
      };

      }
