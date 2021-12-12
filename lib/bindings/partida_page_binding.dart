import 'package:get/get.dart';
import 'package:hello/controller/home_controller.dart';
import 'package:hello/controller/partida_controller.dart';

class PartidaBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController());
  Get.lazyPut<PartidaController>(() => PartidaController());
  }
}