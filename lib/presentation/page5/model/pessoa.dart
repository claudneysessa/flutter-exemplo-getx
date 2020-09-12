class Pessoa {
  var nome;

  Pessoa({
    this.nome = "",
  });

  Map<String, dynamic> toJson() => {"nome": this.nome};
}
