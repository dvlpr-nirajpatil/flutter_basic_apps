import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int dice1 = 4;

  int dice2 = 4;

  rollDice() {
    Random random = Random();
    dice1 = random.nextInt(6) + 1;
    dice2 = random.nextInt(6) + 1;

    setState(() {});

    print(dice1);
    print(dice2);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: rollDice,
                    child: Image.asset(
                      'assets/images/dice$dice1.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: rollDice,
                    child: Image.asset(
                      'assets/images/dice$dice2.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
