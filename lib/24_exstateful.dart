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
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Esercizio Stateful',
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onDoubleTap: (){
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                child: SizedBox(
                  height: 360,
                  child: Stack(
                    children: [
                      Image.asset('images/ciccio.jpeg'),
                      Positioned(
                        top: 5,
                        right: 10,
                        child: isLiked ? const Icon(Icons.favorite, color: Colors.red, size: 50,) : const Icon(Icons.favorite_outline, color: Colors.black, size: 50,)
                      )
                    ],
                  )
                ),
              ),
            ),
          ),
        )
      )
    );
  }
}