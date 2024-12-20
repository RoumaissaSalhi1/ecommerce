import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/core/services/services.dart';
import 'package:ecommece/data/datasource/remote/items/items_remote_data.dart';
import 'package:ecommece/data/model/categories_model.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  List<CategoriesModel> categoriesData = [];
  late int selectedCategory;
  late String categoryId;

  List<ItemsModel> itemsData = [];

  StatusRequest statusRequest = StatusRequest.none;

  ItemsRemoteData itemsRemoteData = ItemsRemoteData(Get.find());

  MyServices myServices = Get.find();

  initialData();
  getData();
  changeCategory(int index, String categoryId);
  goToProductDetails(ItemsModel item);
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
  // ignore: avoid_renaming_method_parameters
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

    var response = await itemsRemoteData.getData(
        myServices.sharedPreferences.getString('id')!, categoryId);

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
  goToProductDetails(ItemsModel item) {
    Get.toNamed(
      AppRoute.productDetails,
      arguments: {'itemsModel': item},
    );
  }

  @override
  void onInit() {
    initialData();

    super.onInit();
  }
}
