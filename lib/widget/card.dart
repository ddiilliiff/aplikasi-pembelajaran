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
           side: const BorderSide(
             color: Color.fromARGB(255, 104, 103, 103), 
             width: 4.0,
           )
          ),
        color: color,
        margin: const EdgeInsets.all(10.0),
        child: Container(
          width: 110,
          height: 110,
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final IconData icon;
  const MyCard2({super.key, required this.onPressed, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12.0),
           side: const BorderSide(
             color: Color.fromARGB(255, 104, 103, 103), 
             width: 4.0,
           )
          ),
        color: color,
        child: SizedBox(
          width: 60,
          height: 60,
          // padding: EdgeInsets.all(16.0),
          child: Center(
            child: Icon(
              icon,
              size: 50.0,
              color: Colors.grey.shade100,
            )
          ),
        ),
      ),
    );
  }
}