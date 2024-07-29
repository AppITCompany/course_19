import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_27_state_management_init/home1/home_2.dart';

// 1) Bizde kichikei bir jerdi ozgortuu uchun build methodun kaira chakyruu
// 2) datalardy kaalgandai bashkara albaibyz

class Home1Page extends StatefulWidget {
  const Home1Page({super.key});

  @override
  State<Home1Page> createState() => _Home1PageState();
}

class _Home1PageState extends State<Home1Page> {
  int count = 0;

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
              onPressed: () async {
                final value = await Navigator.push<int>(
                  context,
                  MaterialPageRoute<int>(
                    builder: (BuildContext context) => Home2Page(count),
                  ),
                );
                if (value != null) {
                  count = value;
                  setState(() {});
                }
              },
              child: const Text('go home 2'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
