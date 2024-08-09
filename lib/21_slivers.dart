import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            elevation: 10, // ! Devo capire perchè non funziona
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sliver',
                style: TextStyle(
                  fontFamily: 'Oswald',
                ),
              ),
              centerTitle: true,
            ),
            backgroundColor: Colors.green,
            expandedHeight: 70,
            leading: Icon(
              Icons.catching_pokemon,
              size: 60,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 11, (context, index) {
              return ListTile(
                trailing: const Icon(
                  Icons.local_pizza,
                  size: 60,
                ),
                title: Text(
                  'Pizza $index',
                  style: const TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 40
                  ),
                  ),
              );
            })),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(childCount: 32, (context, index) {
                return GridTile(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.indigo,
                    child: Text(
                      '$index',
                      style: const TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 30,
                        color: Colors.amber
                      ),
                    ),
                  ),  
                );
              },),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5
              ),
            )
        ],
      ),
    );
  }
}
