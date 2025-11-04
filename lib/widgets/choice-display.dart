import 'package:flutter/material.dart';

class ChoiceDisplay extends StatelessWidget {
  final String playerChoice;
  final String computerChoice;

  const ChoiceDisplay({
    Key? key,
    required this.playerChoice,
    required this.computerChoice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You: ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(playerChoice, style: const TextStyle(fontSize: 32)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Computer: ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(computerChoice, style: const TextStyle(fontSize: 32)),
            ],
          ),
        ],
      ),
    );
  }
}
