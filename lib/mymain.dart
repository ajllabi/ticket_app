import 'package:flutter/material.dart';
import 'base/bottom_nav_bar.dart';

//void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'AL AMANA',
      //theme: ThemeData(),
      home: BottomNavBar(),
      //home: Center(child: const Text("Hello")),
      // home: Scaffold(

      // appBar: AppBar(
      //   title: Center(child: Text('Al Amana Micro Finance Mobile')),
      //   backgroundColor: Colors.blue,
      // ),
      // body: Column(
      //   children: <Widget>[Center(child: Text('Body here centered'))],
      // ),
      // ),
    );
  }
}
