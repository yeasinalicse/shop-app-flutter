import 'package:flutter/material.dart';

// stateless ,statefull

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
 static var produc = "Alpha Transparent background,you are welcome here at PNG River. Download Product Png Image 59157 For Designing";
  List peopleList = [
    {"name":"Product 1","email":produc,"image":"https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"},
    {"name":"Product 2","email":produc,"image":"https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"},
    {"name":"Product 3","email":produc,"image":"https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"},
    {"name":"Product 4","email":produc,"image":"https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"},
    {"name":"Product 5","email":produc,"image":"https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"},
    {"name":"Product 6","email":produc,"image":"https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"},
    {"name":"Product 7","email":produc,"image":"https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"}
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
            leading: BackButton(color: Colors.white),
            title: Row(
              children: [Container(child: Text('Shop details'))],
            )),
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/shoptwo.jpg",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                    bottom: 50,
                    left: 220,
                    child: Text(
                      "Welcome shop",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ],
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
                  'Shoping details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                )),
                decoration: BoxDecoration(color: Colors.deepOrange),
              ),
            ),
           SizedBox(
             height:300,
            width: double.infinity,
             child: ListView.builder(
                 itemCount: peopleList.length,
                 itemBuilder: (BuildContext context, int index) {
                   return   ListTile(
                     leading: CircleAvatar(
                     child: Image.network("https://pngriver.com/wp-content/uploads/2018/04/Download-Product-Png-Image-59157-For-Designing-Projects.png"),
                     ),title: Text(peopleList[index]["name"]),
                     subtitle: Text(peopleList[index]["email"]),

                   );
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


  Widget _cell(){
    return Row(children: <Widget>[
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(color: Colors.teal),
        child: Icon(Icons.lightbulb_outline,color: Colors.white),
    ),
        SizedBox(
          width: 10,
        )
    ],);
  }
}
