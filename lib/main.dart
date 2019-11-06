import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './src/HomePage.dart';
import 'details.dart';

// stateless ,statefull

void main() {
  runApp(MaterialApp(home: MainPage()));
}


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(pageTitle: 'Welcome'),
//      routes: <String, WidgetBuilder> {
//        '/home': (BuildContext context) => HomePage(),
//      },
    );
  }

}