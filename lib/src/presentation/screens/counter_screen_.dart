import 'package:flutter/material.dart';
import 'package:hello_word_app/src/widgets/custom_floating_buttom.dart';

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
             CustomFloatingButtom(
              onPressed: () => setState(() => _counter = 0),
              icon: Icons.refresh
              ),
             const SizedBox(height: 10),
            CustomFloatingButtom(
              onPressed: () => setState(() => _counter++),
              icon: Icons.plus_one
              ),
             const SizedBox(height: 10),
             CustomFloatingButtom(
              onPressed: () => setState(() => _counter > 0 ? _counter-- : null),
              icon: Icons.exposure_minus_1
              ),
          ],
        ));
  }
}

