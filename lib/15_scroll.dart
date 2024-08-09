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
        title: 'Scroll'
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
      body: const Scrollbar(
        scrollbarOrientation: ScrollbarOrientation.left,
        thickness: 15,
        thumbVisibility: true,
        trackVisibility: true,
        radius: Radius.circular(20),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Ciao', style: TextStyle(fontSize: 150),),
              Text('Scrolliamo', style: TextStyle(fontSize: 50),),
              Text('Ciao', style: TextStyle(fontSize: 150),),
              Text('Ciao', style: TextStyle(fontSize: 150),),
              Text('Ciao', style: TextStyle(fontSize: 150),)
            ],
          ),
        ),
      )
    );
  }
}
