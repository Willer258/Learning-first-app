import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  VoidCallback ResetHandler;
  Result(this.resultScore, this.ResetHandler, {super.key});
  get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "Peuh c'est pas grave";
    } else if (resultScore <= 12) {
      resultText = "Um c'est bien tu est dans la secte";
    } else if (resultScore <= 16) {
      resultText = "Otaku en vu";
    } else {
      resultText = "The god of the weeb";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed:ResetHandler,
            child: Text('Recommencer'),
          )
        ],
      ),
    );
  }
}
