import 'package:flutter/material.dart';

class Forms {
  smallavatar(BuildContext context, double h) {
    return Card(
      shape: CircleBorder(),
      elevation: 2,
      child: CircleAvatar(
        backgroundColor: Colors.deepPurple,
        radius: h * .04,
        child: CircleAvatar(
          backgroundImage: new NetworkImage(
              "https://i.pinimg.com/originals/24/37/bd/2437bd9758a684862c11aa9e8f20341a.jpg"),
          radius: h * .035,
        ),
      ),
    );
  }

  textformfieldcontainer(
      BuildContext context, double t, Color a, Color b, String hint) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: a))),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: textstyles(context, t, b),
        ),
      ),
    );
  }

  space(BuildContext context, double h) {
    return SizedBox(height: h);
  }

  textstyles(BuildContext context, double t, Color a) {
    return TextStyle(color: a, fontWeight: FontWeight.bold, fontSize: t);
  }

  lencontainer(BuildContext context, String text, double h, double w, double t,
      Color a, Color linear1, Color linear2) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(h*.2),
        gradient: LinearGradient(colors: [
          linear1,
          linear2,
        ]),
        boxShadow: [
          BoxShadow(
            color: linear2,
            blurRadius: 5,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Center(child: Text(text, style: textstyles(context, t, a))),
    );
  }

  containerdecoration(
      BuildContext context, Color a,Color b ,Color c, double h) {
    return BoxDecoration(
         gradient: LinearGradient(colors: [
          a,
          b,
        ]),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(h),
            bottomRight: Radius.circular(h)
        ),
        boxShadow: [
          BoxShadow(
            color: c,
            blurRadius: 10,
            offset: Offset(1.5, 1.5),
          )
        ]);
  }








  textfieldcontainerdecoration(
      BuildContext context, Color a,Color b ,Color c, double h) {
    return BoxDecoration(
         gradient: LinearGradient(colors: [
          a,
          b,
        ]),
        borderRadius: BorderRadius.circular(h),
        boxShadow: [
          BoxShadow(
            color: c,
            blurRadius: 10,
            offset: Offset(1.5, 1.5),
          )
        ]);
  }

  centerImage(BuildContext context, double h) {
    return Container(
        height: h * .2, child: Image(image: AssetImage("assets/a.png")));
  }

  button(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.home),
      backgroundColor: Colors.purple,
      onPressed: () {},
    );
  }
}
