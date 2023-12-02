import 'package:flutter/material.dart';
import 'package:test1/widget/card.dart';

class MySoundButton extends StatefulWidget {
  const MySoundButton({super.key});

  @override
  State<MySoundButton> createState() => _MySoundButtonState();
}

class _MySoundButtonState extends State<MySoundButton> {

  bool isSoundOn = true;

  void toggleSound(){
    setState(() {
      isSoundOn = !isSoundOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyCard2(
      onPressed: toggleSound, 
      color: Colors.yellow, 
      icon: isSoundOn ? Icons.volume_up : Icons.volume_off);
  }
}