import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CounterScreen')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCount',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text('Click${clickCount == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //actualize the action
          setState(() {
            clickCount += 1;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
