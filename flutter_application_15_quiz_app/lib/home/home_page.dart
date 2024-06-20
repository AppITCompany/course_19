import 'package:flutter/material.dart';
import 'package:flutter_application_15_quiz_app/components/custom_button.dart';
import 'package:flutter_application_15_quiz_app/components/question_result.dart';
import 'package:flutter_application_15_quiz_app/components/question_text.dart';
import 'package:flutter_application_15_quiz_app/source/questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> results = <bool>[];
  int currentIndex = 0;

  void _checkAnswer({required bool value}) {
    if (questions.values.elementAt(currentIndex) == value) {
      results.add(true);
    } else {
      results.add(false);
    }

    if (questions.length == currentIndex + 1) {
      final tuuraJooptor = results.where((e) => e == true).toList();

      showDialog(
        context: context,
        builder: (context) => AlertDialog.adaptive(
          title: const Text('Test Buttu :)'),
          content: Text('${tuuraJooptor.length}/${questions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                currentIndex = 0;
                results.clear();
                Navigator.pop(context);
                setState(() {});
              },
              child: const Text('Kaira bashtoo'),
            )
          ],
        ),
      );
    } else {
      currentIndex++;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тапшырма 7'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          QuestionText(
            text: questions.keys.elementAt(currentIndex),
          ),
          const SizedBox(height: 100),
          CustomButton(
            color: const Color(0xff4CB050),
            text: 'Туура',
            onPressed: () {
              _checkAnswer(value: true);
            },
          ),
          const SizedBox(height: 30),
          CustomButton(
            color: const Color(0xffEF443A),
            text: 'Туура эмес',
            onPressed: () {
              _checkAnswer(value: false);
            },
          ),
          const Spacer(),
          QuestionResult(results: results),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
