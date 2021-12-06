class PartidasModel {

  int ?id;
  String ?name;

  PartidasModel({ id, name });

  PartidasModel.fromJson(Map<String, dynamic> json){
      id = json['id'];
      name = json['name'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}