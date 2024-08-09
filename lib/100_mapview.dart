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
        title: 'MapView' // Nome inventato da me
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
    'Cicciogamer89': 'images/ciccio.jpeg'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.fastfood_rounded),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 5, // altezza ombra AppBar
        shadowColor: Colors.black,
        titleTextStyle: const TextStyle(fontFamily: 'Oswald', fontSize: 20, color: Colors.black)     
      ),
      body: ListView(
        children: [
          for (var entry in contatti.entries)
            Container(
              color: Colors.lightGreen,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              height: 100,
              child: Row(
                children: [
                  Image.asset(entry.value), // Valore della map (dizionario)
                  const SizedBox(width: 10),
                  Text(
                    entry.key, // Chiave della map (dizionario)
                    style: const TextStyle(
                      fontFamily: 'Oswald', 
                      fontSize: 20
                    )
                  ), 
                ],
              ),
            )
        ],
      )
    );
  }
}
