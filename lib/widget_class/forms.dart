import 'package:flutter/material.dart';

class Forms {
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

  lencontainer(BuildContext context, double h, double w, double t, Color a,
      Color linear1, Color linear2) {
    return Container(
      height: h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
      child: Center(child: Text("Login", style: textstyles(context, t, a))),
    );
  }
    textfieldcontainerdecoration(BuildContext context,Color a ,Color b,double h) {
      return BoxDecoration(
          color: a,
          borderRadius: BorderRadius.circular(h),
          boxShadow: [
            BoxShadow(
              color: b,
              blurRadius: 20,
              offset: Offset(2, 8),
            )
          ]);
    }
}
