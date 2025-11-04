import 'package:flutter/material.dart';
import '../utils/game-utils.dart';
import 'choice-button.dart';

class ActionButtons extends StatelessWidget {
  final Function(String) onChoiceSelected;

  const ActionButtons({Key? key, required this.onChoiceSelected})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ChoiceButton(
          emoji: GameUtils.rock,
          onPressed: () => onChoiceSelected(GameUtils.rock),
        ),
        ChoiceButton(
          emoji: GameUtils.paper,
          onPressed: () => onChoiceSelected(GameUtils.paper),
        ),
        ChoiceButton(
          emoji: GameUtils.scissors,
          onPressed: () => onChoiceSelected(GameUtils.scissors),
        ),
      ],
    );
  }
}
