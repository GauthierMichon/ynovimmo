import 'package:flutter/material.dart';


/// This is the stateless widget that the main application instantiates.
class AddFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[

          Text(
            "Filtres",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),

        
          Material(
            color: Colors.white,
            child: Center(
              child: MaterialButton(
                child: Icon(
                  Icons.add, 
                  color: Colors.white,
                  ),
                onPressed: () {},
                color: Colors.green,
                shape: CircleBorder(),
              ),
            ),
          )
        ],
      )
    );
  }
}