class Aluno {
  // Atributos
  String? _nome;
  double? _nota1, _nota2;

  // Construtor
  Aluno(String nome, double nota1, double nota2) {
    this._nome = nome;
    this._nota1 = nota1;
    this._nota2 = nota2;

    _mensagem();
  }

  // Método de média
  double _calculoMedia() {
    return (this._nota1! + this._nota2!) / 2;
  }

  // Método de situação
  String _situacao() {
    return _calculoMedia() >= 7 ? "Aprovado(a)" : "Reprovado(a)";
  }

  // Mensagem
  void _mensagem() {
    print("${this._nome} está ${_situacao()} com média ${_calculoMedia()}");
  }
}
