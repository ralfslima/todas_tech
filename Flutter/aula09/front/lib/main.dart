// Importação do material
import 'package:flutter/material.dart';

// Importação do http
import 'package:http/http.dart' as http;

// Importação do convert
import 'dart:convert';

// Importação da classe Pessoa
import 'package:front/Pessoa.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// Stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
        ),
      ),
      home: const Pagina(),
    );
  }
}

// StatefulWidget
class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// CADASTRAR UMA NOVA PESSOA NA API
Future<Pessoa> cadastrarPessoa(String nome, String cidade) async {
  // Realizar requisição
  var retorno = await http.post(Uri.parse('http://localhost:3000/pessoas'),
      headers: <String, String>{'Content-type': 'application/json'},
      body: jsonEncode(<String, String>{'nome': nome, 'cidade': cidade}));

  // Extrair o retorno da API
  var pessoa = jsonDecode(retorno.body);

  // Criar um objeto do tipo Pessoa
  Pessoa p = Pessoa();
  p.id = pessoa["id"];
  p.nome = pessoa["nome"];
  p.cidade = pessoa["cidade"];

  // Retorno
  return p;
}

// SELECIONAR TODAS AS PESSOAS NA API
Future<List<Pessoa>> selecionarPessoas() async {
  // Realizar a requisição
  var retorno = await http.get(Uri.parse('http://localhost:3000/pessoas'));

  // Extrair o body do retorno
  var dados = jsonDecode(retorno.body);

  // Lista de pessoas
  List<Pessoa> pessoas = [];

  // Laço de repetição
  for (var obj in dados) {
    Pessoa p = Pessoa();
    p.id = obj["id"];
    p.nome = obj["nome"];
    p.cidade = obj["cidade"];

    pessoas.add(p);
  }

  // Retorno
  return pessoas;
}

// State
class ConteudoPagina extends State {
  // Variáveis
  String? nome;
  String? cidade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("9ª aula de Flutter"),
      ),
      body: Center(
        child: Column(
          children: [
            // FORMULÁRIO DE CADASTRO
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  // Campo de nome
                  TextField(
                    onChanged: (valor) {
                      setState(() {
                        nome = valor;
                      });
                    },
                  ),
                  // Cidade
                  TextField(
                    onChanged: (valor) {
                      setState(() {
                        cidade = valor;
                      });
                    },
                  ),
                  // Botão
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // Obter os dados da pessoa cadastrada
                        cadastrarPessoa(nome!, cidade!);
                      });
                    },
                    child: const Text("Cadastrar"),
                  ),
                ],
              ),
            ),

            // LISTAGEM DE PESSOAS
            Expanded(
              child: FutureBuilder(
                future: selecionarPessoas(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Text("${snapshot.data![index].id}"),
                            Text("${snapshot.data![index].nome}"),
                            Text("${snapshot.data![index].cidade}"),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
