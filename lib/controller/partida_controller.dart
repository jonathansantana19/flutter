import 'package:get/get.dart';
import 'package:hello/controller/home_controller.dart';
import 'package:hello/data/model/item_model.dart';

class PartidaController extends GetxController {
// final MyRepository repository;
// PartidaController(this.repository);
 final item = Get.find<HomeController>().getDetails(Get.arguments[0]);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  void detailsPartida(ItemModel itemModel) async {
  //    items.add(itemModel);
  //   var box = await Hive.openBox("cart");
  //   box.put("cart_items", items.toList());
  //   Get.showSnackbar(
  //     GetBar(
  //       title: "Added",
  //       message: "to cart list",
  //       duration: Duration(seconds: 2),
  //     ),
  //   );

  }
}
