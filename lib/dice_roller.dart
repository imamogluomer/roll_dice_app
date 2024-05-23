import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    //var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      //currentDiceRoll = Random().nextInt(6) + 1; When user click the button it will create new object every time. It's redundant.
      currentDiceRoll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text('Roll!'))
      ],
    );
  }
}
