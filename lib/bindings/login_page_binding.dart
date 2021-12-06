import 'package:get/get.dart';
import 'package:hello/controller/login_controller.dart';
import 'package:hello/data/repository/login_repository.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<LoginRepository>(() => LoginRepository());
  }
}
