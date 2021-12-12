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
          onPressed: () {},
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
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: Colors.black,
      //   selectedItemColor: Color(0xff465bd8),
      //   items: bottomItems(),
      //   onTap: _homeController.onChange,
      //   currentIndex: _homeController.index.value,
      // ),
    );
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
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              _homeController.itemItems[index].localidade
                                  .toString(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.network(
                                  _homeController.itemItems[index].logo
                                      .toString(),
                                  width: size.width / 8,
                                  height: size.width / 8,
                                ),
                                Text(
                                  "${_homeController.itemItems[index].nome} ${_homeController.itemItems[index].resultado} X ${_homeController.itemItems[index].resultadoB} ${_homeController.itemItems[index].nomeB}",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff465bd8),
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.network(
                                  _homeController.itemItems[index].logoB
                                      .toString(),
                                  width: size.width / 8,
                                  height: size.width / 8,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Get.to(PartidaPage(
                    model: _homeController.itemItems[index],
                  ));
                },
              );
            }));
  }
}
