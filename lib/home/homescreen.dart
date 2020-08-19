import 'package:flutter/material.dart';
import 'package:flutter_page_ui/widget_class/forms.dart';

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
  Forms f = new Forms();
  @override
  Widget build(BuildContext context) {
    Context = context;
    // TODO: implement build
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    t = MediaQuery.of(context).textScaleFactor * h;
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Container(
            height: h * .5,
          ) ,
          f.space(context, h * .03),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: Form(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: f.textfieldcontainerdecoration(context,Colors.white,Color.fromRGBO(245, 195, 194, 1),h * .01),
                    child: Column(children: <Widget>[
                        f.textformfieldcontainer(context, t * .02 ,  Colors.grey[100],Colors.grey[400], "Username"),
                        f.textformfieldcontainer(context, t * .02 ,  Colors.grey[100],Colors.grey[400], "Password"),
                    ]),
                  ),
                  f.space(context, h * .03),
                  GestureDetector(
                    child: f.lencontainer(context, h * .07, w , t * .03, Colors.white , Color.fromRGBO(245, 195, 194, 1),Color.fromRGBO(245, 195, 194, .6))
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
