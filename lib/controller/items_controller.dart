import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/data/datasource/remote/items/items_remote_data.dart';
import 'package:ecommece/data/model/categories_model.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:ecommece/linkapi.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  List<CategoriesModel> categoriesData = [];
  late int selectedCategory;
  late String categoryId;

  List<ItemsModel> itemsData = [];

  StatusRequest statusRequest = StatusRequest.none;

  ItemsRemoteData itemsRemoteData = ItemsRemoteData(Get.find());

  initialData();
  getData();
  changeCategory(int index, String categoryId);
  goToProductDetails(int index);
}

class ItemsControllerImp extends ItemsController {
  @override
  initialData() {
    categoriesData = Get.arguments['categories'];
    selectedCategory = Get.arguments['selectedCategory'];
    categoryId = Get.arguments['categoryId'];
    getData();
  }

  @override
  changeCategory(int index, String catId) {
    selectedCategory = index;
    categoryId = catId;
    getData();
    update();
  }

  @override
  getData() async {
    itemsData.clear();
    statusRequest = StatusRequest.loading;
    update();

    var response = await itemsRemoteData.getData(categoryId);

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.succes) {
      if (response['status'] == 'success') {
        List items = [];

        items.addAll(response['data']);

        itemsData = items.map((data) => ItemsModel.fromJson(data)).toList();
      } else {
        //Get.defaultDialog(title: 'Warning', middleText: 'Warning');
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToProductDetails(int index) {
    Get.toNamed(
      AppRoute.productDetails,
      arguments: {'itemsModel': itemsData[index]},
    );
  }

  @override
  void onInit() {
    initialData();

    super.onInit();
  }
}
