import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Screen"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_counter",
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
               Text("Click${ _counter == 1 ? "" : "s" }", style: const TextStyle(fontSize: 24)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _counter++;
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        ));
  }
}
