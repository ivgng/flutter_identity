import 'package:flutter/material.dart';
import 'font_style.dart';

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
            backgroundColor: Colors.black38,
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
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/garden.jpg'),
                        height: 200,
                      ),
                      Text("Gardener", style: titleImage),
                    ],
                  )))),
    );
  }
}
