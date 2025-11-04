import 'package:flutter/material.dart';

class ScoreDisplay extends StatelessWidget {
  final int playerScore;
  final int computerScore;

  const ScoreDisplay({
    Key? key,
    required this.playerScore,
    required this.computerScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Your Score: $playerScore    Computer Score: $computerScore',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
