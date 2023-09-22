// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, must_be_immutable

// Importações
import 'package:flutter/material.dart';
import 'package:pp01_mvc/controle/CalculadoraControle.dart';

// Statefull
class CalculadoraVisao extends StatefulWidget {
  CalculatorController controller;
  CalculadoraVisao(this.controller);

  @override
  State<StatefulWidget> createState() {
    return CalculadoraVisaoState();
  }
}

// State
class CalculadoraVisaoState extends State<CalculadoraVisao> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Soma (MVC)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número 1'),
              onChanged: (value) {
                widget.controller.setNumero1(double.tryParse(value) ?? 0.0);
              },
            ),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número 2'),
              onChanged: (value) {
                widget.controller.setNumero2(double.tryParse(value) ?? 0.0);
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _result = widget.controller.soma();
                });
              },
              child: const Text('Calcular Soma'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Resultado: $_result',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
