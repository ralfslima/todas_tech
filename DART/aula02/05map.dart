void main(){

  // Map
  Map<String, String> estadosCapitais = {
    'Goiás':'Goiânia',
    'Paraná':'Curitiba',
    'Santa Catarina':'Florianópolis',
    'Rio Grande do Sul':'Porto Alegre'
  };

  // Exibir todos os valores
  print(estadosCapitais);

  // Listar todos os valores individualmente
  estadosCapitais.forEach((chave, valor) { print(valor + " - " + chave); });

  // Exibir o valor da chave Goiás
  print(estadosCapitais['Goiás']);
  

}