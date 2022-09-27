import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  final VoidCallback selectHandler;
  final String AnwserText;
  Anwser(this.selectHandler, this.AnwserText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(AnwserText),
      ),
    );
  }
}
