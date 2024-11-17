import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/core/services/services.dart';
import 'package:ecommece/data/datasource/remote/home/home_remote_data.dart';
import 'package:ecommece/data/model/categories_model.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  MyServices myServices = Get.find();
  String? username;

  List<CategoriesModel> categoriesData = [];

  List<ItemsModel> itemsData = [];

  StatusRequest statusRequest = StatusRequest.none;

  HomeRemoteData homeRemoteData = HomeRemoteData(Get.find());

  getData();
  initialData();
  goToItems(List categories, int selectedCategory, String categoryId);
  goToFavorite();
}

class HomePageControllerImp extends HomePageController {
  @override
  initialData() {
    username = myServices.sharedPreferences.getString('username');
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await homeRemoteData.getData();

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.succes) {
      if (response['status'] == 'success') {
        List categories = [];
        List items = [];

        categories.addAll(response['categories']);

        items.addAll(response['items']);

        categoriesData =
            categories.map((data) => CategoriesModel.fromJson(data)).toList();

        itemsData = items.map((data) => ItemsModel.fromJson(data)).toList();
      } else {
        // Get.defaultDialog(
        //     title: 'Warning', middleText: 'Phone number or Email incorrect');
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }

  @override
  goToItems(List categories, int selectedCategory, String categoryId) {
    Get.toNamed(AppRoute.items, arguments: {
      'categories': categories,
      'selectedCategory': selectedCategory,
      'categoryId': categoryId,
    });
  }

  @override
  goToFavorite() {
    Get.toNamed(AppRoute.favorite);
  }
}
