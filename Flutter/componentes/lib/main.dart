import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  //final _estiloTexto = new TextStyle (fontSize: 25, fontFamily: 'Dax-Regular');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
         const Locale('en', 'US'), // English
         const Locale('es', 'ES'), // Hebrew
       ],
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){
        return MaterialPageRoute(
          builder: ( BuildContext context) => AlertPage() // Cualquier otra ruta nos envia al AlerPage()
          );
      },

    );
  }
}