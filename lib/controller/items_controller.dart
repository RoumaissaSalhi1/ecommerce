import 'package:ecommece/data/model/categories_model.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  List<CategoriesModel> categoriesData = [];
  int? selectedCategory;

  initialData();
  changeCategory(int index);
}

class ItemsControllerImp extends ItemsController {
  @override
  initialData() {
    categoriesData = Get.arguments['categories'];
    selectedCategory = Get.arguments['selectedCategory'];
  }

  @override
  changeCategory(int index) {
    selectedCategory = index;
    update();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
