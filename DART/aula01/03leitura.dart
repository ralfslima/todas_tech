// Importar módulo para ler via terminal
import "dart:io";

void main(){

  // Pergunta
  print("Qual é o seu nome?");

  // Obter um nome
  String? nome = stdin.readLineSync();

  // Mensagem
  print("Boa noite $nome");

}