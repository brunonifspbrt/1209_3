import 'package:flutter/material.dart';
import 'package:ex3/soma.dart';
import 'package:ex3/subtracao.dart';
import 'package:ex3/multiplicacao.dart';
import 'package:ex3/divisao.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget atual = const Soma();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              TextButton(
                child: const Text('Soma'),
                onPressed: () {
                  setState(() {
                    atual = const Soma();
                  });
                },
              ),
              TextButton(
                child: const Text('Subtração'),
                onPressed: () {
                  setState(() {
                    atual = const Subtracao();
                  });
                },
              ),
              TextButton(
                child: const Text('Multiplicação'),
                onPressed: () {
                  setState(() {
                    atual = const Multiplicacao();
                  });
                },
              ),
              TextButton(
                child: const Text('Divisão'),
                onPressed: () {
                  setState(() {
                    atual = const Divisao();
                  });
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Matemática'),
        ),
        body: atual,
      ),
    );
  }
}
