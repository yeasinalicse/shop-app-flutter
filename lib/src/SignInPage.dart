import 'package:ShopApp/src/shared/colors.dart';
import 'package:ShopApp/src/shared/inputFields.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './shared/styles.dart';
import './SignUpPage.dart';
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
        title: Text('Sign In',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: 15)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
               Navigator.of(context).pushReplacementNamed('/signup');
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft,  child: SignUp()));

            },
            child: Text('Sign Up', style: whiteText),
          )
        ],

      ),
      body: ListView(
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
                      onPressed: () {},
                      child: Text('Forgot Password?', style: contrastTextBold),
                    )
                  ],

                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: FlatButton(
                    onPressed: () {
                      //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: Dashboard()));
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
    );
  }
}
