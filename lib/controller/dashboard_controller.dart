import 'package:get/get.dart';

/**
 * example: https://github.com/TeamArtisansDev/flutter-getx-bottom-navigation-example/blob/main/lib/pages/home/home_page.dart
 */
class DashboardController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
