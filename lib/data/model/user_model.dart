import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String id = "";
  String name = "";
  String email = "";
  String urlImage = "";

  UserModel({id, name, email, urlimage});

  UserModel.fromSnapshot(User snapshot) {
    print(snapshot);
    this.id = snapshot.uid;
    this.name = snapshot.displayName.toString();
    this.email = snapshot.email.toString();
    this.urlImage = snapshot.photoURL.toString();
  }

  // UserModel.fromSnapshot(User currentUser)
  //     : id = currentUser.uid,
  //       name = currentUser.displayName.toString(),
  //       email = currentUser.email.toString(),
  //       urlImage = currentUser.photoURL.toString();

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "email": email, "urlImage": urlImage};
  }
}
