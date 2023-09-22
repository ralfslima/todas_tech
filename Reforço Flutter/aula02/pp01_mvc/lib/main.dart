import 'package:flutter/material.dart';
import 'package:pp01_mvc/controle/CalculadoraControle.dart';
import 'package:pp01_mvc/visao/CalculadoraVisao.dart';

void main() {
  final CalculatorController controller = CalculatorController();
  runApp(
    MaterialApp(
      home: CalculadoraVisao(controller),
    ),
  );
}
