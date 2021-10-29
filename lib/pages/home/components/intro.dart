import 'dart:ui' as ui show PlaceholderAlignment;
import 'package:flutter/material.dart';
 
class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
        children: <Widget>[

          MaterialButton(
            child: Icon(
              Icons.arrow_back_outlined, 
              color: Colors.black,
              size: 40.0,
              ),
            onPressed: () {},
          ),

          Container(
            margin: const EdgeInsets.only(left: 50.0),
            child: Text(
            "Les Biens",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
