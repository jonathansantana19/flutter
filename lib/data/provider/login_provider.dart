import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hello/data/model/user_model.dart';

class LoginAPiClient {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  GoogleSignIn googleSign = GoogleSignIn();

  Future<String> createUserWithEmailAndPassword(String email, String senha)  async{
    try {

       await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: senha);
      return "Signed up!";
    } catch (e) {
      return "";
    }
  }


  ///  fazer login
  Future<UserModel> signWithEmailWithPassword(
      String email, String password) async {
    try {
      final currentUser  = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password)).user;
              print('currentUser');
            // print( UserModel.fromSnapshot(currentUser!));
      return UserModel.fromSnapshot(currentUser!);
    } catch (e) {
      print(e);
      return new UserModel();

    }
  }

  /// fazer logoff
  signOut() {
    return _firebaseAuth.signOut();
  }
}
