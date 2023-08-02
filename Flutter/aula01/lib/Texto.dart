// Classe de texto
import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  // Atributo
  String? nome;
  Color? cor;
  double? tamanhoFonte;

  // Construtores
  Texto({super.key});
  Texto.obterNome({super.key, this.nome});
  Texto.obterNomeCor({super.key, this.nome, this.cor});
  Texto.obterNomeCorTamanhoFonte(
      {super.key, this.nome, this.cor, this.tamanhoFonte});

  // Método
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello $nome!",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: tamanhoFonte, color: cor),
    );
  }
}
