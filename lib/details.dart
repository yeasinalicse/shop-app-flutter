import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: DetailsPage()));
}

class DetailsPage extends StatelessWidget {
  final String pageTitle;
  DetailsPage({Key key, this.pageTitle}) : super(key: key);
  final _longText = "Once a modern shopping mall is built, our rents will increase significantly, and we will have to increase our prices as a result. The main reason people come to this market is so they can get items such as imported food at very low prices.";
//  final _shortText = "Discover the meaning of the Jarnel name on Ancestry®.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar( title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('MODERN SHOP'))
          ],

        )),
        body: Column(
          children: <Widget>[
            Image.asset("assets/images/shop.png",height: 250),
            Container(
              child: Text(
                _longText,
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(16),
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(left: 16, right: 5, top: 16),
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.account_balance,
                      color: Colors.white,
                    )),
                Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 16),
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    )),
                Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(left: 5, right: 16, top: 16),
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.weekend,
                      color: Colors.white,
                    ))
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(left: 16, right: 5, top: 16),
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.work,
                      color: Colors.white,
                    )),
                Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(left: 5, right: 5, top: 16),
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.accessible,
                      color: Colors.white,
                    )),
                Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(left: 5, right: 16, top: 16),
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.archive,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ));
  }
}
