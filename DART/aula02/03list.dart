void main(){

  // Lista (Array/Vetor)
  List<String> cidades = ["Goiânia", "São Paulo"];

  // Adicionar um novo registro na lista
  cidades.add('Rio de Janeiro');

  // Adicionar dois novo registros na lista
  cidades.addAll(['Belo Horizonte', 'Curitiba']);

  // Adicionar um novo registro na primeira posição
  cidades.insert(0, "Florianópolis");

  // Remover registro através do valor
  //cidades.remove('São Paulo');

  // Remover registro através da posição
  //cidades.removeAt(0);

  // Remover vários registros
  //cidades.removeRange(0, 2);

  // Exibir todo o conteúdo da lista
  //print(cidades);

  // Laço FOR
  // for(int indice = 0; indice < cidades.length; indice++){
  //   print(cidades[indice]);
  // }

  // ForEach
  cidades.forEach((c) { print(c); });

}
