import 'package:flutter/material.dart';

class ListaEmpilhadeirasPage extends StatefulWidget {
  const ListaEmpilhadeirasPage({super.key});

  @override
  State<ListaEmpilhadeirasPage> createState() => _ListaEmpilhadeirasPageState();
}

class _ListaEmpilhadeirasPageState extends State<ListaEmpilhadeirasPage> {
  final service = _ListaEmpilhadeirasPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Empilhadeiras")),
      body: Center(child: Container()),
    );
  }
}
