import 'package:flutter/material.dart';
import 'package:forklift/config/supabase.dart';

void main() async {
  await SupabaseConfig.init();
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
        backgroundColor: Color(0xFFFC6E20),
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
      ),
      body: HomePage(),
    );
  }
}
