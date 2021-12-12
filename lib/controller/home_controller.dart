import 'package:get/get.dart';
import 'package:hello/data/model/item_model.dart';
import 'package:hello/data/repository/remote_repository.dart';

class HomeController extends GetxController {
  final RemoterRepository remoteRepository = RemoterRepository();

  var categoryItems = List<String>.empty().obs;
  var itemItems = List<ItemModel>.empty().obs;
  var loading = true.obs;
  var ite = ItemModel().obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
    fetchItems();
  }

  var index = 0.obs;

  void onChange(int index) {
    this.index.value = index;
  }

  void fetchCategories() async {
    var getItems = [
      "electronics",
      "jewelery",
      "men's clothing",
      "women's clothing"
    ];
    categoryItems.value = getItems;
  }

  Future<void> fetchItems() async {
    loading.value = true;
    itemItems.clear();
    var listJogos = await remoteRepository.getAll();
    loading.value = false;
    if (listJogos != null) {
      listJogos.forEach((item) {
        itemItems.add(ItemModel.fromJson(item));
      });
    }
  }

  ItemModel getDetails(ItemModel itemModel){
    print('itemItems');
    print(itemModel);
    return itemModel;

  }

}
