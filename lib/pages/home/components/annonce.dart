import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
 
class Annonce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[350],
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child:  Row(
        children: <Widget>[

          Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            height: 150,
            width: 150,
          ),

          Column(
            children: <Widget>[
              Text(
                "Maison de charme",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),

              Text(
                "Talence, Forum",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),

              Text(
                "Jardin, pierre apparente",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),

              Row(
                children: [
                  Text(
                    "il y a 20sec",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),

                  Text(
                    "115 000€",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.red,
                      ),
                    ),
                ],
              )
            ],
          )
          
        ],
      ),
    );
  }
}
