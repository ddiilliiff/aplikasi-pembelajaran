import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            child: Image(
              image: AssetImage('assets/menu.png'),
              fit: BoxFit.cover,
              ),
          ),
        ],
      ),
    );
  }
}