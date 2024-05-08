import 'dart:developer';

import 'package:flutter/material.dart';

// MaterialApp - Bul bir Widget - tirkemenin ozogu.
// Tirkemenin temasyn tilderin bersek bolot. Daraktyn songgogu desek bolot.

// Widget - Flutter'de UI'da korgonubuzdun baary widget.

// StatelessWidget - Ozun-ozu jangylai albagan widget.

// StatefulWidget - Ozun-ozu jangylai algan widget.

// State - StatefulWidget abaly (jardamchy class'y)

// setState - UI dy jangylagan method

// _ ?

// Widget

// BuildContext

// child - children

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int san = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Тапшырма 1'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: Card(
                    child: Center(
                      child: Text(
                        'Сан: $san',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        san--;
                        log(san.toString());
                        setState(() {});
                      },
                      child: const Text('-'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        san++;
                        log(san.toString());
                        setState(() {});
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
