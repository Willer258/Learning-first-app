// ignore_for_file: avoid_print, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'quiz.dart';

import './result.dart';
//import d'un composant(widgets)

//declaration de mon appli en gros
void main() => runApp(MyApp());
//runApp me peremt en gros de lancer on application qui est MyApp

class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Quel est ton animal favori ? ',
      'reponse': [
        {'text': 'Panda', 'score': 1},
        {'text': 'Chien', 'score': 1},
        {'text': 'Chat', 'score': 1},
        {'text': 'Lapin', 'score': 1}
      ]
    },
    {
      'questionText': 'Quel est ta couleur preferée ? ',
      'reponse': [
        {'text': 'Rouge', 'score': 3},
        {'text': 'Bleu', 'score': 4},
        {'text': 'Noir', 'score': 2},
        {'text': 'Blanc', 'score': 3},
      ]
    },
    {
      'questionText': 'Quel est ton manga preferée ? ',
      'reponse': [
        {'text': 'Naruto', 'score': 8},
        {'text': 'Bleach', 'score': 5},
        {'text': 'One piece', 'score': 5},
        {'text': 'Dragon ball Z', 'score': 6},
        {'text': 'Je ne regarde pas', 'score': 1},
      ]
    },
    {
      'questionText': 'Quel est ton jeu preferée ? ',
      'reponse': [
        {'text': 'Naruto storm', 'score': 7},
        {'text': 'Tekken', 'score': 5},
        {'text': 'Fifa', 'score': 2},
        {'text': 'NBA 2K', 'score': 2},
        {'text': 'Candy crush', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _AnwserQuestion(int score) => {
        _totalScore += score,
        setState(() {
          _questionIndex = _questionIndex + 1;
        }),
        print(_questionIndex),
      };
  void _resetQuiz() => setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mon appli'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                anwserQuestion: _AnwserQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
