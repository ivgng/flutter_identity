import 'package:flutter/material.dart';
import 'font_style.dart';
import 'custom_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Identity V Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Identity V Gallery'),
      home: Scaffold(
        appBar: AppBar(
          // title: Text("Identity V"),
          title: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
            height: 60,
          ),
          backgroundColor: darkBlue,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.info_outline), onPressed: () {})
          ],
        ),
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.only(
                    left: 10.0, top: 5.0, right: 10.0, bottom: 10.0),
                padding: EdgeInsets.only(
                    left: 10.0, top: 5.0, right: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage('assets/images/garden.jpg'),
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 10.0),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage('assets/images/mercenary.jpg'),
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 10.0),
                        ),
                        Text(
                          "Gardener",
                          style: titleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Name : Emma Woods",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Gender : Female",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Birthday : December 21",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Age : 22",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Likes : Canaries, Her Father",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Dislikes : Rats, Foxes",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Role : Contain",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Voice Actor : Slyvia Wu",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        OutlineButton(
                          child: new Text("Gallery Emma"),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                          onPressed: () {
                            print("Emma Gallery");
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, bottom: 5.0, left: 10.0),
                        ),
                        Text(
                          "Mercenary",
                          style: titleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Name : Naib Subedar",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Gender : Male",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Birthday : July 23",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Age : 27",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Likes : Scimitars, moonlit nights",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Dislikes : Wild boars",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Role : Rescue, Contain",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Voice Actor : Li Yuantao",
                          style: subtitleImage,
                          textAlign: TextAlign.left,
                        ),
                        OutlineButton(
                          child: new Text("Gallery Naib"),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                          onPressed: () {
                            print("Naib Gallery");
                          },
                        ),
                      ],
                    ),
                  ],
                ))),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Survivor',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hardware),
              label: 'Hunter',
            ),
          ],
          selectedItemColor: Colors.red,
        ),
      ),
    );
  }
}
