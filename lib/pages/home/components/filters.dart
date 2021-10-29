import 'dart:ui' as ui show PlaceholderAlignment;
import 'package:flutter/material.dart';
 
class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[350],
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child:  Row(
        children: <Widget>[

          Text(
            "Maison",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),

          MaterialButton(
            child: Icon(
              Icons.cancel_outlined, 
              color: Colors.black,
              size: 40.0,
              ),
            onPressed: () {},
            color: Colors.white,
            shape: CircleBorder(),
          ),

      ])
    );
  }
}
