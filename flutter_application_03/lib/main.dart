import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 244, 220),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 252, 244, 220),
          leading: IconButton(
            onPressed: () {
              log('arrow_back basyldy');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {
                log('attach_file basyldy');
              },
              icon: const Icon(Icons.attach_file),
            ),
            IconButton(
              onPressed: () {
                log('today basyldy');
              },
              icon: const Icon(Icons.today),
            ),
            IconButton(
              onPressed: () {
                log('more_vert basyldy');
              },
              icon: const Icon(Icons.more_vert),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 17),
              child: Text(
                'Saved Podcasts',
                style: TextStyle(fontSize: 35),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
