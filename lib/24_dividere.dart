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
        title: 'Dividere i widget'
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
  List<int> numeri = [0, 1, 51, 75, 100, 125, 150, 175, 200, 225, 250, 200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.fastfood_rounded),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 5, // Altezza ombra AppBar
        shadowColor: Colors.red,
        titleTextStyle: const TextStyle(fontFamily: 'Oswald', fontSize: 25, color: Colors.white)     
      ),
    body: ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: numeri.length,
      itemBuilder:(context, index) {
        if(numeri[index] % 2 == 0){
          return Container(
            color: Colors.green,
            height: 100,
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              '$index',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.white
              ),
            ),
          );
        } else {
          return Container(
            color: Colors.red,
            height: 100,
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              '$index',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.white
              ),
            ),
          );
        }
      },
    )
    );
  }
}
