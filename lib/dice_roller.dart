import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  
  void onPressed() {
    
    setState(() {
    currentDiceRoll = randomizer.nextInt(6) + 1;  
    });
    
    
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset('assets/dice-$currentDiceRoll.png',width: 200,height: 200,),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1E1E1E), // VS Dark (Dark+) background
              foregroundColor: Colors.white, // Text color
              minimumSize: const Size(180, 56),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            child: const Text('Roll Dice'), 
            
          ),
        ],);
  }
} 