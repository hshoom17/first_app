import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class MyTextWidget extends StatelessWidget {
     MyTextWidget(this.text,this.color, {super.key});

  final Color color;  
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 135, 37, 30),
      body: Center(
        child: DiceRoller(),  
    )
    );
  }
}
