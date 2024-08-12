import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget { // ! Con StatelessWidget il counter non avrebbe incrementato i numeri
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Stateful',
            style: TextStyle(
              fontFamily: 'Oswald'
            ),
          ),
          leading: const Icon(
            Icons.ac_unit,
            size: 50,
          ),
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text(
            '$counter',
            style: const TextStyle(
              fontSize: 100,
              fontFamily: 'Oswald'
            ),
          ),
        ),
        floatingActionButton: TextButton(
          onPressed: () {
            setState(() {
              ++counter;
            });
          }, 
          child: const Icon(
            Icons.add,
            size: 60,
          )
          ),
      )
    );
  }
}