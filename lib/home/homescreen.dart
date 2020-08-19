import 'package:flutter/material.dart';
import 'package:flutter_page_ui/widget_class/forms.dart';


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
        child: Stack(children: <Widget>[
          Positioned(
            child: Container(
              padding: EdgeInsets.all(12),
              height: h * .425,
              decoration: f.containerdecoration(
                  context,
                      Color.fromRGBO(146, 80, 157, 1),
                  Color.fromRGBO(251,126, 253, 1),
                  Color.fromRGBO(48, 25, 52, 1),
                  h * .02),
              child: Column(
                children: <Widget>[
                  f.space(context, h * .09),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      f.smallavatar(context, h),
                      f.lencontainer(
                          context,
                          "Hyathi",
                          h * .09,
                          w * .58,
                          t * .042,
                          Colors.white,
                          Color.fromRGBO(149, 65, 84, 1),
                          Color.fromRGBO(222, 93, 131, 1)),
                      f.smallavatar(context, h),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: w * .3,
            top: h * .32,
            child:f.centerImage(context, h),
          ),

          Positioned(
            left: w * .75,
            top: h * .38,
            child:f.button(context)
          ),

    Padding(
    padding: EdgeInsets.only(left: 30, right: 30),
    child: Column(
      children: <Widget>[
        f.space(context, h * .57),
        Container(
          padding: EdgeInsets.all(5),
          decoration: f.textfieldcontainerdecoration(
              context,
              Colors.white,
                Colors.white,
              Color.fromRGBO(132, 44, 140, 1),
              h * .01),
          child: Column(children: <Widget>[
            f.textformfieldcontainer(context, t * .023,
                Colors.grey[100], Colors.grey[400], "Username"),
            f.textformfieldcontainer(context, t * .023,
                Colors.grey[100], Colors.grey[400], "Password"),
          ]),
        ),

        f.space(context, h * .03),
        GestureDetector(
            child: f.lencontainer(
                context,
                "Login",
                h * .07,
                w,
                t * .03,
                Colors.white,
                          Color.fromRGBO(146, 80, 157, 1),
                  Color.fromRGBO(251,126, 253, 1),))
          ],
      ),
 
  ),
        ]
        ),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}
