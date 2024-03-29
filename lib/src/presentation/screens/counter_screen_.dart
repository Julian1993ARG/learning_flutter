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
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _counter = 0;
                });
              },
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_counter",
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text("Click${_counter == 1 ? "" : "s"}",
                  style: const TextStyle(fontSize: 24)),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                _counter++;
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(height: 10),
             FloatingActionButton(
              onPressed: () {
                if(_counter > 0) _counter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1),
            )
          ],
        ));
  }
}
