import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Widget> items = [];

  void addItem() {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    final leftSpace = Random().nextInt(maxWidth.toInt());
    final topSpace = Random().nextInt(maxHeight.toInt());
    final newItem = Positioned(
      left: leftSpace.toDouble(),
      top: topSpace.toDouble(),
      child: Image.asset(
        'assets/diamond.png',
        width: 50,
      ),
    );
    items.add(newItem);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
        title: const Text('Second Page'),
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Stack(
        children: items,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
