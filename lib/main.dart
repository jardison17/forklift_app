import 'dart:math';

import 'package:flutter/material.dart';
import 'package:forklift/screens/homepage_screen.dart';

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
            Icon(Icons.menu_open, color: Colors.white, size: 30),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'ForkLift',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFFFC6E20),
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF0F0F0F),
      ),
      body: HomepageScreen(),
    );
  }
}
