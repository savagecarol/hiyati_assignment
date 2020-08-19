
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MainHome(),
    );
  }
}

class MainHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainHomeState();
  }
}
var h, w, t;
class MainHomeState extends State<MainHome> {
  var Context;
 
  @override
  Widget build(BuildContext context) {
    Context = context;
    // TODO: implement build
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    t = MediaQuery.of(context).textScaleFactor * h;
    return Scaffold(
      body: Container()
      
    );
  }
}