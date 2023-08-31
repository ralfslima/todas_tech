// Pacote Material
import 'package:flutter/material.dart';

// StatefulWidget
class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<StatefulWidget> createState() {
    return PaginaInicialState();
  }
}

// State
class PaginaInicialState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            "https://media.staticontent.com/media/pictures/04641818-297a-4f28-b635-b15e2fb31087")
      ],
    );
  }
}
