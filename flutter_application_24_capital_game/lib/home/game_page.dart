import 'package:flutter/material.dart';
import 'package:flutter_application_24_capital_game/components/app_bar_title.dart';
import 'package:flutter_application_24_capital_game/components/game_process_indicator.dart';
import 'package:flutter_application_24_capital_game/components/option_button.dart';
import 'package:flutter_application_24_capital_game/components/question_name.dart';
import 'package:flutter_application_24_capital_game/components/question_image.dart';
import 'package:flutter_application_24_capital_game/models/capital_question.dart';

class GamePage extends StatefulWidget {
  const GamePage(this.questions, {super.key});

  final List<CapitalQuestion> questions;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late final List<CapitalQuestion> _questions;
  int _maxScore = 0;
  int _index = 0;
  int _totalScore = 0;
  int _chance = 3;

  @override
  void initState() {
    _questions = widget.questions;
    for (var q in _questions) {
      _maxScore += q.score;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          score: _totalScore.toString(),
          index: _index,
        ),
        actions: [
          ...List.generate(
            _chance,
            (i) => const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(7),
          child: GameProcessIndicator(_index),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          QuestionName(_questions[_index].cityName),
          QuestionImage(_questions[_index].imageUrl),
          Expanded(
            child: Column(
              children: [
                OptionButton(
                  optionName: 'A',
                  optionText: _questions[_index].anwers[0].text,
                  onPressed: () {
                    _checkAnswer(_questions[_index].anwers[0]);
                  },
                ),
                OptionButton(
                  optionName: 'B',
                  optionText: _questions[_index].anwers[1].text,
                  onPressed: () {
                    _checkAnswer(_questions[_index].anwers[1]);
                  },
                ),
                OptionButton(
                  optionName: 'C',
                  optionText: _questions[_index].anwers[2].text,
                  onPressed: () {
                    _checkAnswer(_questions[_index].anwers[2]);
                  },
                ),
                OptionButton(
                  optionName: 'D',
                  optionText: _questions[_index].anwers[3].text,
                  onPressed: () {
                    _checkAnswer(_questions[_index].anwers[3]);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }

  void _checkAnswer(Answer answer) {
    if (_index <= _questions.length - 1) {
      if (answer.isCorrect) {
        _totalScore += _questions[_index].score;
        if (_index < _questions.length - 1) {
          _index++;
        } else {
          _showDialog('Game Over');
        }
      } else {
        if (_chance > 0) {
          _chance--;
          if (_index < _questions.length - 1) {
            _index++;
            _showSnackBar('Answer is not correct your chance is $_chance');
          } else {
            _showDialog('Game Over');
          }
        } else {
          _showDialog('Your Chance is Over');
        }
      }
    } else {
      _showDialog('Game Over');
    }

    setState(() {});
  }

  Future<void> _showDialog(String title) async {
    await showAdaptiveDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog.adaptive(
          title: const Text('Game Over'),
          content: Center(
            child: Column(
              children: [
                const Text('Your score is'),
                Text('$_totalScore/$_maxScore'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
    if (mounted) Navigator.pop(context);
  }

  void _showSnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text)),
    );
  }
}
