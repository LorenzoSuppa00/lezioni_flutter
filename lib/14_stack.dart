import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
        title: 'Stack'
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.fastfood_rounded),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 5, // Altezza ombra AppBar
        shadowColor: Colors.black,
        titleTextStyle: const TextStyle(fontFamily: 'Oswald', fontSize: 20, color: Colors.black)     
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 687),
            height: 2000,
            color: Colors.lightGreen,
          ),
          const Positioned(
            bottom: 0, 
            left: 100, 
            child: Icon(Icons.piano, size: 100)
          ),
          const Positioned(
          bottom: -10, 
          right: 136.5, 
          child: Icon(Icons.piano, size: 100)
          ),
          Container(
            height: 50,
            color: Colors.orange,
          )
        ],
      )
    );
  }
}
