class ItemModel {
  int? id;
  String? nome;
  String? nomeB;
  String? title;
  dynamic? price;
  String? description;
  String? category;
  String? image;
  String? imageB;
  String? resultado;
  String? resultadoB;
  String? localidade;
  String? placar;
  String? placarB;
  String? logo;
  String? logoB;

  ItemModel({
    this.id,
    this.nome,
    this.nomeB,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.imageB,
    this.resultado,
    this.resultadoB,
    this.localidade,
    this.placar,
    this.placarB,
    this.logo,
    this.logoB,
  });

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['logo'];
    imageB = json['logoB'];
    nome = json['nome'];
    nomeB = json['nomeB'];
    resultado = json['placar'];
    resultadoB = json['placarB'];
    localidade = json['localidade'];
    logo = json['logo'];
    logoB = json['logoB'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['logo'] = this.image;
    data['logoB'] = this.imageB;
    data['nome'] = this.nome;
    return data;
  }
}
