// Importação do material
import 'package:flutter/material.dart';

// Importação do http
import 'package:http/http.dart' as http;

// Importação do convert
import 'dart:convert';

class Produto {
  int? codigo;
  String? nome;
  String? imagem;
}

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
          seedColor: Colors.purpleAccent,
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

// State
class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("7ª aula de Flutter"),
      ),
      body: FutureBuilder(
        future: obterPostagens(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              // Card
              return Card(
                // Padding
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  // Coluna
                  child: Column(
                    // Alinhar os conteúdos a esquerda
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Componentes filhos
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                            "Código da Postagem: ${snapshot.data![index].id}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Título: ${snapshot.data![index].title}"),
                      ),
                      Text("Texto: ${snapshot.data![index].body}"),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Classe de Postagem
class Post {
  int? userId;
  int? id;
  String? title;
  String? body;
}

// Classe contendo método assíncrono
Future<List<Post>> obterPostagens() async {
  // URL da API
  String url = "https://jsonplaceholder.typicode.com/posts";

  // Realizar a requisição
  var requisicao = await http.get(Uri.parse(url));

  // Converter a requisição em um objeto JSON
  var dados = json.decode(requisicao.body);

  // Criar uma lista de postagens
  List<Post> postagens = [];

  // Laço de repetição
  for (var objeto in dados) {
    // Criar objeto do tipo Postagem
    Post p = Post();

    // Atribuindo características ao objeto
    p.userId = objeto["userId"];
    p.id = objeto["id"];
    p.title = objeto["title"];
    p.body = objeto["body"];

    // Adicionar o objeto no vetor de postagens
    postagens.add(p);
  }

  // Retorno
  return postagens;
}
