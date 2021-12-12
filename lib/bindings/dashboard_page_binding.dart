import 'package:get/get.dart';
import 'package:hello/controller/dashboard_controller.dart';
import 'package:hello/controller/home_controller.dart';
import 'package:hello/controller/login_controller.dart';

class DashbordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
