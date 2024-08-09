import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Decorated Box Gradient'
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // This widget is the home page of your application.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Map<String, String> contatti = {
    'Franchino Er Criminale': 'images/franchino.jpg',
    'CiccioGamer89': 'images/ciccio.jpeg',
    'Claudio Bisio': 'images/bisio.jpg',
    'JOk3R': 'images/jokerone.jpg'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.catching_pokemon),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 10, // Altezza ombra AppBar
        shadowColor: Colors.black,
        titleTextStyle: const TextStyle(fontFamily: 'Oswald', fontSize: 20, color: Colors.white)     
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.indigo,
              Colors.purple,
              ]
            ),
            border: Border.all(
              width: 8,
              color: Colors.black
            ),
            shape: BoxShape.circle
          ),
          child: Container(
            height: 400,
          ),
        ),
      )
    );
  }
}
