import 'package:get/get.dart';
import 'package:hello/controller/home_controller.dart';
import 'package:hello/controller/login_controller.dart';
import 'package:hello/data/provider/remote_provider.dart';
import 'package:hello/data/repository/remote_repository.dart';
// import 'package:getx_hasura_crud_example/controller/home_page_controller.dart';
// import 'package:getx_hasura_crud_example/repository/hasura_settings.dart';
// import 'package:getx_hasura_crud_example/repository/produto_repository.dart';

class HomePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<RemoterRepository>(() => RemoterRepository());
    Get.lazyPut<Remoter>(() => Remoter());
    // Get.lazyPut<HomePageController>(() => HomePageController());
    // Get.lazyPut<HasuraSettings>(() => HasuraSettings());
    // Get.lazyPut<ProdutoRepository>(() => ProdutoRepository());
  }
}