import 'package:ShopApp/src/shared/colors.dart';
import 'package:ShopApp/src/shared/inputFields.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './shared/styles.dart';
import './SignUpPage.dart';
import 'Dashboard.dart';
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: highlightColor,
        title: Text('Back',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: 15)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/signup');
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft,  child: SignUpPage()));

            },
            child: Text('Sign Up', style: whiteText),
          )
        ],

      ),
      body: WillPopScope(
        onWillPop: (){
          Navigator.pop(context);
        },
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              height: 245,
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: authPlateDecoration,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Welcome Back ",style: h3,),
                      Text('Howdy, let\'s authenticate', style: taglineText),
                      textInput('Username'),
                      passwordInput('Password'),
                      FlatButton(
                        onPressed: () {

                        },
                        child: Text('Forgot Password?', style: contrastTextBold),
                      )
                    ],

                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: FlatButton(
                      onPressed: () {
                       Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: DashboardPage()));
                      },
                      color: primaryColor,
                      padding: EdgeInsets.all(13),
                      shape: CircleBorder(),
                      child: Icon(Icons.arrow_forward, color: white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      )
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
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
                  Navigator.pop(context);
                 Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }
}
