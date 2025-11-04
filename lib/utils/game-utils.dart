import 'dart:math';

class GameUtils {
  static const String rock = '✊';
  static const String paper = '✋';
  static const String scissors = '✌️';
  static const String question = '❓';

  static const List<String> choices = [rock, paper, scissors];

  static String getComputerChoice() {
    final random = Random();
    return choices[random.nextInt(choices.length)];
  }

  static String determineWinner(String playerChoice, String computerChoice) {
    if (playerChoice == computerChoice) {
      return 'tie';
    }

    if ((playerChoice == rock && computerChoice == scissors) ||
        (playerChoice == paper && computerChoice == rock) ||
        (playerChoice == scissors && computerChoice == paper)) {
      return 'player';
    }

    return 'computer';
  }

  static String getResultMessage(String winner) {
    switch (winner) {
      case 'player':
        return 'You Win 😊';
      case 'computer':
        return 'You Lose 😢';
      case 'tie':
        return 'It is a Tie 😐';
      default:
        return '';
    }
  }
}
