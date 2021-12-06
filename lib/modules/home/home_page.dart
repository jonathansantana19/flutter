import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/controller/home_controller.dart';
import 'package:hello/controller/login_controller.dart';
import 'package:hello/modules/partida/partida_page.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Acompanha ai",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
         leading: IconButton(
           icon: Icon(Icons.exit_to_app),
           onPressed: (){},
         ),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: null),
          IconButton(
              icon: Icon(Icons.beach_access),
              onPressed: () {
                Get.find<LoginController>().logout();
              })
        ],
      ),
      body: IndexedStack(
        index: _homeController.index.value,
        // RefreshIndicator(
        //     onRefresh: () async {
        //       _homeController.fetchItems;
        //     },
        //     child: SingleChildScrollView(
        //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        //       child: Wrap(
        //         runSpacing: 20,
        children: [
          //wSearch(context), wCategories(),
          wItemList(context)
        ],
        //       ),
        //     )
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xff465bd8),
        items: bottomItems(),
        onTap: _homeController.onChange,
        currentIndex: _homeController.index.value,
      ),
    );
  }

  List<BottomNavigationBarItem> bottomItems() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.foundation), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
    ];
  }

  wItemList(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(() => _homeController.loading.value
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: _homeController.itemItems.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 10),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFFFFFF),
                            const Color(0xB0E7E9E7),
                          ],
                          begin: Alignment(0.2, 0.0),
                          end: Alignment(1.0, 0.0),
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      // Image.network(
                      //   _homeController.itemItems[index].logo.toString(),
                      //   width: size.width / 4,
                      //   height: size.width / 4,
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_homeController.itemItems[index].localidade
                                .toString()),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Color(0xff465bd8),
                                  onPressed: () {
                                    // cc.addToCart(controller.itemItems[index]);
                                    Get.to(() => PartidaPage(),
                                        arguments: [index]);
                                  },
                                  // child: Icon(
                                  // Foundation.shopping_cart,
                                  // size: 20,
                                  // ),
                                  mini: true,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  heroTag: null,
                                ),
                                Text(
                                  _homeController.itemItems[index].nome
                                          .toString() +
                                      _homeController.itemItems[index].placar
                                          .toString() +
                                      "\X" +
                                      _homeController.itemItems[index].placarB
                                          .toString() +
                                      _homeController.itemItems[index].nomeB
                                          .toString(),
                                  style: TextStyle(
                                      // fontSize: 12.0.sp,
                                      color: Color(0xff465bd8),
                                      fontWeight: FontWeight.bold),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xff465bd8),
                                  onPressed: () {
                                    Get.to(() => PartidaPage(),
                                        arguments: [index]);
                                  },
                                  // child: Icon(
                                  // Foundation.shopping_cart,
                                  // size: 20,
                                  // ),
                                  mini: true,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  heroTag: null,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              );
            }));
  }
}
