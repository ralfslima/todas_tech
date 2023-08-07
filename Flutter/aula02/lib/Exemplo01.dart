// Importar pacote material
import 'package:flutter/material.dart';

// StatefulWidget - Página dinâmica
class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// Classe contendo toda a interface gráfica
class ConteudoPagina extends State {
  // Variável
  Color cor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //print("Você clicou no botão");

        setState(() {
          if (cor == Colors.purple) {
            cor = Colors.green;
          } else {
            cor = Colors.purple;
          }
        });
      },
      child: Text("Clique aqui"),
      style: ElevatedButton.styleFrom(backgroundColor: cor),
    );
  }
}
