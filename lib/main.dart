import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Forklift());
}

class Forklift extends StatelessWidget {
  const Forklift({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.menu, color: Colors.white, size: 30),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'ForkLift',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.deepOrangeAccent,
              width: double.infinity, // largura infinita

              padding: const EdgeInsets.all(12), // Margem interna
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Selecione a empilhadeira',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Buscar Empilhadeiras',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
