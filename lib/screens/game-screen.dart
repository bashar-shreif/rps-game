import 'package:flutter/material.dart';
import '../utils/game-utils.dart';
import '../widgets/choice-display.dart';
import '../widgets/action-buttons.dart';
import '../widgets/result-message.dart';
import '../widgets/score-display.dart';
import '../widgets/reset-button.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String playerChoice = GameUtils.question;
  String computerChoice = GameUtils.question;
  int playerScore = 0;
  int computerScore = 0;
  String resultMessage = '';

  void handleChoice(String choice) {
    setState(() {
      playerChoice = choice;
      computerChoice = GameUtils.getComputerChoice();

      final winner = GameUtils.determineWinner(playerChoice, computerChoice);
      resultMessage = GameUtils.getResultMessage(winner);

      if (winner == 'player') {
        playerScore++;
      } else if (winner == 'computer') {
        computerScore++;
      }
    });
  }

  void handleReset() {
    setState(() {
      playerChoice = GameUtils.question;
      computerChoice = GameUtils.question;
      playerScore = 0;
      computerScore = 0;
      resultMessage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFF4A90E2)),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Let's Play Rock-Paper-Scissors",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                    ChoiceDisplay(
                      playerChoice: playerChoice,
                      computerChoice: computerChoice,
                    ),
                    const SizedBox(height: 40),
                    ActionButtons(onChoiceSelected: handleChoice),
                    const SizedBox(height: 30),
                    ResultMessage(message: resultMessage),
                    const SizedBox(height: 20),
                    ScoreDisplay(
                      playerScore: playerScore,
                      computerScore: computerScore,
                    ),
                    const Spacer(),
                    ResetButton(onReset: handleReset),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
