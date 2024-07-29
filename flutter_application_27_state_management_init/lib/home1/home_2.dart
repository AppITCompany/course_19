import 'dart:developer';

import 'package:flutter/material.dart';

class Home2Page extends StatefulWidget {
  const Home2Page(this.count, {super.key});

  final int count;

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  int count = 0;

  @override
  void initState() {
    count = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('build ishtedi');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wihtout State management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, count);
              },
              child: const Text('go back'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count--;
          setState(() {});
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
