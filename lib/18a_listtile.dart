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
        title: 'ListTile'
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
    'Cicciogamer89': 'images/ciccio.jpeg',
    'Claudio Bisio': 'images/bisio.jpg'
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
        elevation: 5, // Altezza ombra AppBar
        shadowColor: Colors.black,
        titleTextStyle: const TextStyle(fontFamily: 'Oswald', fontSize: 20, color: Colors.black)     
      ),
      body: ListView(
        padding: const EdgeInsets.all(0.5),
        children: [
          for (var contatto in contatti.entries)
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(contatto.value),
              ),
              title: Text(contatto.key),
              subtitle: const Text('Ciao Lorenzo! Come stai?'),
              tileColor: Colors.green,
            )
        ],
      )
    );
  }
}
