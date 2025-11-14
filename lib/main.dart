import 'package:flutter/material.dart';
import 'package:forklift/screens/homepage_screen.dart';
import 'package:forklift/config/supabase.dart';

void main() async {
  await SupabaseConfig.init();
  runApp(const Forklift());
}

class Forklift extends StatelessWidget {
  const Forklift({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
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
        backgroundColor: const Color(0xFF0F0F0F),
        title: Row(
          children: [
            const SizedBox(width: 10),
            const Text(
              'ForkLift',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFFFC6E20),
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),

      // AQUI está o corpo da HomePage
      body: const HomepageScreen(),
    );
  }
}
