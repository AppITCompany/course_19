import 'dart:math';
import 'dart:developer' as d;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int firstDice = 0;
  int secondDice = 0;

  int fisrtScore = 0;
  int secondScore = 0;

  bool isEnable = true;

  void onTap(bool isFirstPlayer) {
    isEnable = !isEnable;
    firstDice = Random().nextInt(6) + 1;
    secondDice = Random().nextInt(6) + 1;

    if (isFirstPlayer) {
      fisrtScore = fisrtScore + firstDice + secondDice;
    } else {
      secondScore = secondScore + firstDice + secondDice;
    }

    d.log('1-player score: $fisrtScore');
    d.log('2-player score: $secondScore');
    setState(() {});
  }

  void restart() {
    firstDice = 0;
    secondDice = 0;
    fisrtScore = 0;
    secondScore = 0;
    isEnable = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Dice App'),
        actions: [
          TextButton(
            onPressed: restart,
            child: const Text('Restart'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: firstDice == 0 || secondDice == 0
              ? const Text(
                  'Let\'s Go',
                  style: TextStyle(fontSize: 48),
                )
              : Column(
                  children: [
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('$fisrtScore'),
                          Text('$secondScore'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Flexible(
                      child: Image.asset(
                        'assets/dice$firstDice.png',
                      ),
                    ),
                    const SizedBox(height: 50),
                    Flexible(
                      child: Image.asset(
                        'assets/dice$secondDice.png',
                      ),
                    ),
                    const SizedBox(height: 170),
                  ],
                ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.large(
            onPressed: isEnable ? () => onTap(true) : null,
            child: const Text(
              '1-Player',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.large(
            onPressed: !isEnable ? () => onTap(false) : null,
            child: const Text(
              '2-Player',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
