import 'package:get/get.dart';

class PageIndicatorController extends GetxController {
  RxInt selectedPosition = 0.obs;

  int itemsCount = 0;

  void setItemsCount(int count) {
    itemsCount = count;
  }

  void changePage(int index) {
    selectedPosition.value = index;
  }
}
