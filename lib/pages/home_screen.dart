import 'package:flutter/material.dart';
import 'package:test1/widget/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            child: Image(
              image: AssetImage('assets/menu.png'),
              fit: BoxFit.cover,
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyCard(
                title: "belajar", 
                onPressed: (){
                  Navigator.pushNamed(context, '/angka');
                }, color: Colors.blue.shade400,

                ),
                MyCard(
                title: "huhruf", 
                onPressed: (){
                  Navigator.pushNamed(context, '/angka');
                }, 
                color: Colors.amber.shade200, 
                ),
              
              
            ],
          ),
        ],
      ),
    );
  }
}