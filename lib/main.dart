

import 'package:flutter/material.dart';
import 'maindrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),

      ),
      body: Text(
        "Welcome! Buddy",
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: "Pacifico",
        ),
      ),
      //Now we are going to open a new file
      // where we will create the layout of the Drawer
      drawer: Drawer(
        child: MainDrawer(),
      ),
    );
  }
}