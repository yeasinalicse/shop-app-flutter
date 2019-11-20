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

  Future<bool> _onBackPressed() {
    return showDialog(
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application!!'),
            actions: <Widget>[
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () {
                  Navigator.maybePop(context);
                  //Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }

}