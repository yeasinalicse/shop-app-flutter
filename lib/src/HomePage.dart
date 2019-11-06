import 'package:ShopApp/src/shared/buttons.dart';
import 'package:ShopApp/src/shared/colors.dart';
import 'package:ShopApp/src/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:toast/toast.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'SignInPage.dart';
// stateless ,statefull

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  final String pageTitle;
  HomePage({Key key, this.pageTitle}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/welcome.png", width: 190, height: 190),
            Container(
              margin: EdgeInsets.only(bottom: 10,top: 0),
              child: Text("Shop App",style: logoStyle,),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(bottom: 0),
              child: flatBtn("Sign In", ()
              {
                Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rotate, duration: Duration(seconds: 1),  child: SignInPage()));
                Toast.show("Toast plugin app", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
              }),
            ),
            Container(
              width: 200,
              padding: EdgeInsets.all(0),
              child: outlineBtn("Sign Up", (){
                Toast.show("Sign up click", context,duration: Toast.LENGTH_LONG,gravity:  Toast.BOTTOM);
              }),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 120),
              alignment: Alignment(0.0, 0.0),
                child: Row(
                  children: <Widget>[

                    Text('Language:',style: TextStyle(color: darkText)),
                    Container(
                      margin: EdgeInsets.only(left:6),
                      child: Text("English >",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
            )

          ],
        ),
      ),
    );
  }
}

