class Pessoa {
  String? _nome;
  String? _cidade;

  Pessoa(String nome, String cidade) {
    this._nome = nome;
    this._cidade = cidade;

    _mensagem();
  }

  void _mensagem() {
    print("Olá ${this._nome} você mora em ${this._cidade}");
  }
}
