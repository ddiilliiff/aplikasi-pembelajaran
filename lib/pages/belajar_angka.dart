import 'package:flutter/material.dart';

class BelajarAngka extends StatelessWidget {
  const BelajarAngka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: const Image(
              image: AssetImage('assets/menu_b_angka.png'),
              fit: BoxFit.cover,
              ),
          ),
        ],
      )
    );
  }
}