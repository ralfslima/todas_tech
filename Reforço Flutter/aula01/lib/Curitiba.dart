import 'package:flutter/material.dart';

class Curitiba extends StatefulWidget {
  const Curitiba({super.key});

  @override
  State<StatefulWidget> createState() {
    return CuritibaState();
  }
}

class CuritibaState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Curitiba")),
      body: const Text(
        "Informações sobre Curitiba",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
