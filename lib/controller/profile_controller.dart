import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/data/model/user_model.dart';

class ProfileController extends GetxController {

  // final LocalStorageData localStorageData = Get.find();

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  UserModel get userModel => _userModel;
  late UserModel _userModel;

  @override
  void onInit(){
    super.onInit();
    getCurrentUser();
  }

  void getCurrentUser() async{
    _loading.value = false;
    // await localStorage.data.getUser.then((value){
    //   _userModel = value;
    // });
    _loading.value = false;
    update();
  }

}