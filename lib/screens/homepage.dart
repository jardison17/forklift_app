import 'package:flutter/material.dart';

class HomePageInicial extends StatefulWidget {
  const HomePageInicial({super.key});

  @override
  State<HomePageInicial> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicial'), centerTitle: true),
      body: Container(width: 200, height: 100),
    );
  }
}
