import 'dart:html';

class AnimalModel
{
  String nomeAnimal;
  String especie;
  String raca;
  String idade;
  String descricao;
  File imagem;
  File carteirinhaVacinacao;

  AnimalModel(this.nomeAnimal, this.especie, this.raca, this.idade, this.descricao);

  AnimalModel.fromJson(Map<String, dynamic> json) {
    this.nomeAnimal = json['nomeAnimal'];
    this.especie = json['especie'];
    this.raca = json['raca'];
    this.idade = json['idade'];
    this.descricao = json['descricao'];   
  }
}