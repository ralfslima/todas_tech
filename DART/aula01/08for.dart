void main(){

  // Número para finalizar o laço
  int numero = 5;

  // Laço
  for(int indice = 1; indice<11; indice++){
    print(indice);

    if(indice == numero){
      break;
    }else{
      continue;
    }
    
  }

  // BREAK -> Finaliza um laço de repetição
  // CONTINUE -> Continua um laço de repetição

}