import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

// stateless ,statefull

void main() {
  runApp(MaterialApp(home: DashboardPage()));
}

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  static var produc =
      "Alpha Transparent background,you are welcome here at PNG River. Download Product Png Image 59157 For Designing";
  List peopleList = [
    {
      "name": "Nokia 105 DS (2019)...",
      "email": produc,
      "image":
          "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/211x190/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia-105-brand.jpg"
    },
    {
      "name": "Samsung Guru Music 2...",
      "email": produc,
      "image":
          "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/small_image/211x190/9df78eab33525d08d6e5fb8d27136e95/m/u/music_guru_2_1.jpg"
    },
    {
      "name": "HUAWEI P30 Lite Smartphone",
      "email": produc,
      "image":
          "https://d1lwfjp709sq0o.cloudfront.net/media/wysiwyg/1-Huawei-Nova-4e_bg.jpg"
    },
    {
      "name": "lightbox moreview",
      "email": produc,
      "image":
          "https://d1lwfjp709sq0o.cloudfront.net/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-a9-2020.jpg"
    },
    {
      "name": "Product 5",
      "email": produc,
      "image":
          "https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"
    },
    {
      "name": "Product 6",
      "email": produc,
      "image":
          "https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"
    },
    {
      "name": "Product 7",
      "email": produc,
      "image":
          "https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new Drawer(
            child: new Center(
                child: new ListView(
                    padding: const EdgeInsets.only(top: 0.0),
                    children: <Widget>[
              new UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                accountName: const Text("Md Yeasin Ali"),
                accountEmail: const Text("yeasin@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.brown, child: new Text("Home")),
              ),
              new ListTile(
                leading: new Icon(Icons.lightbulb_outline),
                title: new Text('Notes'),
                onTap: () => _onListTileTap(context),
              ),
              new Divider(),
              new ListTile(
                leading: new Text('Label'),
                trailing: new Text('Edit'),
                onTap: () => _onListTileTap(context),
              ),
              new ListTile(
                leading: new Icon(Icons.label),
                title: new Text('Expense'),
                onTap: () => _onListTileTap(context),
              ),
              new ListTile(
                leading: new Icon(Icons.label),
                title: new Text('Inspiration'),
                onTap: () => _onListTileTap(context),
              ),
              new ListTile(
                leading: new Icon(Icons.label),
                title: new Text('Personal'),
                onTap: () => _onListTileTap(context),
              ),
              new ListTile(
                leading: new Icon(Icons.label),
                title: new Text('Work'),
                onTap: () => _onListTileTap(context),
              ),
              new ListTile(
                leading: new Icon(Icons.add),
                title: new Text('Create new label'),
                onTap: () => _onListTileTap(context),
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.archive),
                title: new Text('Archive'),
                onTap: () => _onListTileTap(context),
              ),
              new ListTile(
                leading: new Icon(Icons.delete),
                title: new Text('Trash'),
                onTap: () => _onListTileTap(context),
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.settings),
                title: new Text('Settings'),
                onTap: () => _onListTileTap(context),
              ),
              new ListTile(
                leading: new Icon(Icons.help),
                title: new Text('Help & feedback'),
                onTap: () => _onListTileTap(context),
              )
            ]))),
        appBar: new AppBar(
          backgroundColor: Colors.blueAccent,
          title: new Text('Home'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
                height: 200.0,
                width: 400.0,
                child: Carousel(
                  images: [
                    NetworkImage(
                      'https://d1lwfjp709sq0o.cloudfront.net/media/em_minislideshow/1572111744_0_BigBanner1.jpg',
                    ),
                    NetworkImage(
                        'https://d1lwfjp709sq0o.cloudfront.net/media/em_minislideshow/1572943573_0_Big-Banner-05.jpg'),
                    NetworkImage(
                        'https://d1lwfjp709sq0o.cloudfront.net/media/em_minislideshow/1572111744_0_BigBanner1.jpg'),
                  ],
                )),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Container(
                child: Center(
                    child: Text(
                  'Product Lists',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                )),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: peopleList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _cardView(context, index);
                    Divider();
                  }

//               children: <Widget>[                 ListTile(
//                   leading: CircleAvatar(
////                     child: Text("H"),
//                   ),title: Text("Md Yeasin Ali"),
//                   subtitle: Text("Some Description  your profile"),
//                 ),
//
//                 Divider(),
//
//
//               ],

                  ),
            ),
          ],
        ));
  }

  Widget _cardView(BuildContext context, int index) {
    return new Card(
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(5),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.network(peopleList[index]["image"],
                      width: 100, height: 100, fit: BoxFit.fill),
                  new Text(peopleList[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[
                        new Text(peopleList[index]["email"]),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _cell() {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: Icon(Icons.lightbulb_outline, color: Colors.white),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

_onTapOtherAccounts(BuildContext context) {
  Navigator.of(context).pop();
  showDialog<Null>(
    context: context,
    child: new AlertDialog(
      title: const Text('Account switching not implemented.'),
      actions: <Widget>[
        new FlatButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}

_onListTileTap(BuildContext context) {
  Navigator.of(context).pop();
  showDialog<Null>(
    context: context,
    child: new AlertDialog(
      title: const Text('Not Implemented'),
      actions: <Widget>[
        new FlatButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}
