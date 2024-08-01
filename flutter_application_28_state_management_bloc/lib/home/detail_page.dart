import 'dart:developer';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(this.count, {super.key});

  final int count;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _counter = 0;

  void _incrementCounter() {
    _counter--;
    setState(() {});
  }

  @override
  void initState() {
    _counter = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('build ishtedi');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _counter);
              },
              child: const Text('Back to home'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
