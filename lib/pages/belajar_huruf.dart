import 'package:flutter/material.dart';

class BelajarHuruf extends StatelessWidget {
  const BelajarHuruf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: const Image(
              image: AssetImage('assets/menu_b_huruf.png'),
              fit: BoxFit.cover,
              ),
          ),
        ],
      ),
    );
  }
}