import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/core/services/services.dart';
import 'package:ecommece/data/datasource/remote/home/my_favorite_remote_data.dart';
 import 'package:ecommece/data/model/my_favorite_model.dart';
 import 'package:get/get.dart';

abstract class MyFavoriteController extends GetxController {
  MyServices myServices = Get.find();
  List<MyFavoriteModel> favoriteData = [];

  StatusRequest statusRequest = StatusRequest.none;

  MyFavoriteRemoteData myFavoriteRemoteData = MyFavoriteRemoteData(Get.find());

  getData();
}

class MyFavoriteControllerImp extends MyFavoriteController {
  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await myFavoriteRemoteData
        .getData(myServices.sharedPreferences.getString('id')!);

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.succes) {
       if (response['status'] == 'success') {
        List favoriteList = [];
        favoriteList.addAll(response['data']);
        favoriteData =
            favoriteList.map((data) => MyFavoriteModel.fromJson(data)).toList();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
