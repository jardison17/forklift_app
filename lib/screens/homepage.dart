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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 73, 69, 70),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
