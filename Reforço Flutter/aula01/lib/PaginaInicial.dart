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
    return Center(
      child: SizedBox(
        width: 500,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: [
            Material(
              child: InkWell(
                onTap: () {},
                child: // Container
                    Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  width: 500,
                  // Padding
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: // COLUNA
                        Column(
                      children: [
                        // IMAGEM
                        Image.network(
                            "https://media.staticontent.com/media/pictures/04641818-297a-4f28-b635-b15e2fb31087"),
                        // TÍTULO
                        const Text("Curitiba"),

                        // LINHA CONTENDO OS BOTÕES
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     ElevatedButton(
                        //       onPressed: () {},
                        //       child: const Text("Pontos turísticos"),
                        //     ),
                        //     ElevatedButton(
                        //       onPressed: () {},
                        //       child: const Text("Mapa"),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
