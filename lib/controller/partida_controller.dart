import 'package:get/get.dart';
import 'package:hello/controller/home_controller.dart';
import 'package:hello/data/model/item_model.dart';
import 'package:hello/data/repository/remote_repository.dart';

class PartidaController extends GetxController {
// final MyRepository repository;
// PartidaController(this.repository);
  // final item = Get.find<HomeController>().getDetails(Get.arguments['id']);

  final RemoterRepository remoteRepository = RemoterRepository();

  // var _item;
  // // final _item = ItemModel().obs;
  // get post => this._item.value;
  // set post(value) => this._item.value = value;

  // ItemModel get trx => _item;


  // var teste = ItemModel().obs;

  // @override
  // void onInit() {
  //   print('Arguments: ${Get.arguments['id']}');
  //   getDetails(Get.arguments['id']);
  //   super.onInit();
  // }


  // void detailsPartida(ItemModel itemModel) async {
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
  // }
}
