import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  const MyCard({super.key, required this.title, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(
            color: Colors.black, width: 2.0,
          )
        ),
        color: color,
        margin: EdgeInsets.only(top: 100.0, left: 25.0, right: 25.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white
              ),
          ),
          ),
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const MyCard2({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 15.0),
          ),
          )
      ),
    );
  }
}