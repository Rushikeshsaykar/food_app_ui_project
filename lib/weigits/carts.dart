import 'package:flutter/material.dart';

class Carts extends StatelessWidget {
  String imagelocation;
  String burgerName;
  String burgerType;

  Carts(this.imagelocation, this.burgerName, this.burgerType, {super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),

        height: 225,
        width: 185,
        child: Center(
          child: Column(
            children: [
              
              Image(image: AssetImage(imagelocation)),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Row(
                  
                  children: [
                    Text(
                      burgerName,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
               padding: const EdgeInsets.only(left: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text(burgerType, style: TextStyle(fontSize: 13))],
                ),
              ),
              SizedBox(height: 9),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Text("4.4"),
                  SizedBox(width: 100),
                  Icon(Icons.favorite_outline, color: Colors.amber),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
