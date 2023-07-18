void main(){

  // Tentativa
  try{
    int? numero = int.parse("a2");
    print("O número informadoe é $numero");
  }catch(erro){
    print("Falha ao executar: $erro");
  }

}