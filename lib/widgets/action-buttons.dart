import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final Function(String) onChoiceSelected;

  const ActionButtons({Key? key, required this.onChoiceSelected})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: []);
  }
}
