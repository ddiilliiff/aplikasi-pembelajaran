
import 'package:flutter/material.dart';
import 'package:test1/widget/button.dart';

class MyUtilities {

  // start modal
  static void showSettings(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Setting'),
          content: const Row(
            children: [
              MySoundButton(),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
  // end modal

  
}