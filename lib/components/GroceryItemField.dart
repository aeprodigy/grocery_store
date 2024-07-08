import 'dart:ffi';

import 'package:flutter/material.dart';

class Groceryitemfield extends StatelessWidget {
  //The attributes of the items
  final String name;
  final String price;
  final String imagePath;
  final color;
  void Function()? onTapped;

  //constructor
  Groceryitemfield({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.color,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[
              100], //the colot from the attributes, we just add a shade here.
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              imagePath,
              height: 64,
            ),
            //Name
            Text(name),
            //Button + Price
            MaterialButton(
              color: color[600],
              onPressed: onTapped,
              child: Text(
                'K$price',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
