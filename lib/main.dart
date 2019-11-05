import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// stateless ,statefull

void main() {
  runApp(MaterialApp(home: HomePage()));
}


class HomePage extends StatelessWidget {
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
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset("assets/images/shopingicon.jpg"),
                  Positioned(
                      left: 16,
                      bottom: 50,
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/profile.png"),
                      )),
                  Positioned(
                    left: 16,
                    bottom: 20,
                    child: Text("Md Yeasin Ali"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Image.network("https://library.kissclipart.com/20180903/iyq/kissclipart-smartphone-logo-png-clipart-smartphone-2c6d15c9a6125322.jpg",height: 30,width: 40,),
                title: Text(""
                    "Smart Phone"),
              ),
              Divider(),
              ListTile(
                leading: Image.network("https://www.mobilaty.com/wp-content/uploads/2018/10/smart_mobile_512x512.jpg",height: 30,width: 40,),
                title: Text(""
                    "Feature Phones"),
              ),
              Divider(),
              ListTile(
                leading: Image.network("https://logo-logos.com/wp-content/uploads/2018/02/gucci-filled.png",height: 30,width: 40,),
                title: Text(""
                    "Accessories"),
              ),
              Divider(),
              ListTile(
                leading: Image.network("https://static.adweek.com/adweek.com-prod/wp-content/uploads/sites/2/2015/01/snapchat-logo.jpg",height: 30,width: 40,),
                title: Text(""
                    "Life style"),
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),

            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
                height: 200.0,
                width: 400.0,
                child: Carousel(
                  images: [
                    NetworkImage('https://d1lwfjp709sq0o.cloudfront.net/media/em_minislideshow/1572111744_0_BigBanner1.jpg',),
                    NetworkImage('https://d1lwfjp709sq0o.cloudfront.net/media/em_minislideshow/1572943573_0_Big-Banner-05.jpg'),
                    NetworkImage('https://d1lwfjp709sq0o.cloudfront.net/media/em_minislideshow/1572111744_0_BigBanner1.jpg'),

                  ],
                )
            ),
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
                    return _cardView(context,index);
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

  Widget _cardView(BuildContext context,int index) {
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
                  new Image.network(
                      peopleList[index]["image"],
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill),
                  new Text(  peopleList[index]["name"],  style: TextStyle(fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[
                        new Text(  peopleList[index]["email"]),
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
          decoration: BoxDecoration(color: Colors.teal),
          child: Icon(Icons.lightbulb_outline, color: Colors.white),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
