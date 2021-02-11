import 'package:minhas_anotacoes/helper/AnotacaoHelper.dart';

class Anotacao{

  int id;
  String titulo;
  String descricao;
  String data;

  Anotacao(this.titulo, this.descricao, this.data);

  Anotacao.fromMap(Map map){

    //this.id = map[AnotacaoHelper.colunaId]; // Pode utilizar desse jeito para evitar erros na digitação dos campos, inserir em AnotacaoHelper o atributo: static final String colunaId = "id";
    this.id = map["id"];
    this.titulo = map["titulo"];
    this.descricao = map["descricao"];
    this.data = map["data"];
  }

  Map toMap(){

    Map<String, dynamic> map = {
      "titulo" : this.titulo,
      "descricao" : this.descricao,
      "data" : this.data,
    };

    if (this.id != null) {
      map["id"] = this.id;
    }
    return map;
  }

}