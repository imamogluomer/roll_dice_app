import 'package:roll_dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

//var startAlignment = Alignment.topLeft; normal definit
const startAlignment = Alignment.topLeft;
//final startAlignment = Alignment.topLeft; never receive new value
// var startAlignment; dynamic type
// Alignment? startAlignment; can be null
const endAlignment = Alignment.bottomRight;

/*
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors; 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors, 
        begin: startAlignment, 
        end: endAlignment),
      ),
      child: const Center(
        child: StyledText('Hello!'),
      ),
    );
  }
}
*/
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
