import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/controller/login_controller.dart';

class LoginPage extends StatelessWidget{

  final LoginController _loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        actions: [IconButton(icon: Icon(Icons.refresh), onPressed: null)],
      ),
      backgroundColor: Colors.white,
      body:
       Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            Hero(
              tag: "hero", 
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius:  48.0,
                // child: Image.asset(name),
              )
            ),
            SizedBox(height: 48.0),
            TextFormField(
              controller: _loginController.emailTextController,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              // initialValue: "email@teste.gmail.com",
              decoration: InputDecoration(
                hintText: 'E-mail',
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0)
                )
              )
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _loginController.passwordTextController,
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Senha",
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0)
                )
              )
            ),
             SizedBox(height: 24.0),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 16.0),
               child: RaisedButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
                 onPressed: (){
                   _loginController.login();
                 },
                 padding: EdgeInsets.all(12.0),
                 color: Get.theme.primaryColor,
                 child: Text("Acessar", style: TextStyle(color: Colors.white)),
               ),
             ),
             FlatButton(
               onPressed: () {}, 
               child: Text('Esqueceu a senha?', style: TextStyle(color:  Get.theme.primaryColor),)
             ),
             FlatButton(
               onPressed: () {
                  _loginController.register();
               }, 
               child: Text('Cadastrar-se', style: TextStyle(color:  Get.theme.primaryColor),)
             )
          ],
        ),
      ),
    );
  }
}