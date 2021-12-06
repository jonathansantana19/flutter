import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hello/data/model/user_model.dart';
import 'package:hello/data/repository/login_repository.dart';

class LoginController extends GetxController {
  final LoginRepository repository = LoginRepository();

  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController nameTextController = TextEditingController();

  void register() async {
    Get.dialog(Center(child: CircularProgressIndicator()),barrierDismissible: false);
    String? user = await repository.createUserWithEmailAndPassword(
        emailTextController.text, passwordTextController.text);

    if (user != null) {
      Get.offAllNamed("/home", arguments: user);
    } else {
      Get.snackbar("Error Create", user.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void login() async {
    UserModel? user = await repository.signWithEmailWithPassword(
        emailTextController.text, passwordTextController.text);

    // // ignore: unnecessary_null_comparison
    // if (user != null) {
    //   print('user');
    //   print(user.toString());
      Get.offAllNamed("/home", arguments: user);
    // } else {
    //   Get.snackbar("Error login", user.toString(),
    //       snackPosition: SnackPosition.BOTTOM);
    // }
  }


   Future<void> sendPasswordResetEmail() async {
    // showLoadingIndicator();
    // try {
    //   await repository.sendPasswordResetEmail(email: emailTextController.text);
    //   Get.snackbar(
    //       'auth.resetPasswordNoticeTitle'.tr, 'auth.resetPasswordNotice'.tr,
    //       snackPosition: SnackPosition.BOTTOM,
    //       duration: Duration(seconds: 5),
    //       backgroundColor: Get.theme.snackBarTheme.backgroundColor,
    //       colorText: Get.theme.snackBarTheme.actionTextColor);
    // } on FirebaseAuthException catch (error) {
    //   hideLoadingIndicator();
    //   Get.snackbar('auth.resetPasswordFailed'.tr, error.message!,
    //       snackPosition: SnackPosition.BOTTOM,
    //       duration: Duration(seconds: 10),
    //       backgroundColor: Get.theme.snackBarTheme.backgroundColor,
    //       colorText: Get.theme.snackBarTheme.actionTextColor);
    // }
  }

  void logout() {
    repository.signOut();
    Get.offAllNamed("/login");
    emailTextController.clear();
    passwordTextController.clear();
    nameTextController.clear();
    Get.snackbar("Usuário deslogado", "",
          snackPosition: SnackPosition.BOTTOM);
  }
}
