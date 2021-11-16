
import 'package:app1/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'AIR CAMEL',
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.amber,
        //accentColor: Color.fromRGBO(220, 220, 220,1),
        canvasColor: Color.fromRGBO( 240, 240, 240,1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51,1)),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51,1)),
          subtitle1: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          )

        ) 
      ),
     
      home:TabsScreen(),   // homepage
      
      
    );
  }
}

