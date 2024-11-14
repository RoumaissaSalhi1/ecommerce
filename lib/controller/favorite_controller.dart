import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/functions/handling_data.dart';
import 'package:ecommece/core/services/services.dart';
import 'package:ecommece/data/datasource/remote/items/favorite_remote_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class FavoriteController extends GetxController {
  Map isFavorite = {};

  StatusRequest statusRequest = StatusRequest.none;

  FavoriteRemoteData favoriteRemoteData = FavoriteRemoteData(Get.find());
  MyServices myServices = Get.find();

  setFavorite(String id, String val);
  initSetFavorite(String id, String val);
  onPressedFavorite(String id);
  addFavorite(String itemId);
  removeFavorite(String itemId);
}

class FavoriteControllerImp extends FavoriteController {
  @override
  setFavorite(String id, String val) {
    isFavorite[id] = val;
    update();
  }

  @override
  onPressedFavorite(String id) {
    if (isFavorite[id] == '1') {
      removeFavorite(id);
    } else {
      addFavorite(id);
    }
  }

  @override
  initSetFavorite(String id, String val) {
    if (!isFavorite.containsKey(id)) {
      setFavorite(id, val);
    }
  }

  @override
  addFavorite(String itemId) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await favoriteRemoteData.addFavorite(
        myServices.sharedPreferences.getString('id')!, itemId);

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.succes) {
      if (response['status'] == 'success') {
        setFavorite(itemId, '1');
        Get.rawSnackbar(
            duration: const Duration(seconds: 1),
            title: 'Notification',
            messageText: const Text(
              'Item added to favorites',
              style: TextStyle(color: Colors.white),
            ));
      } else {
        //Get.defaultDialog(title: 'Warning', middleText: 'Warning');
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  removeFavorite(String itemId) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await favoriteRemoteData.removeFavorite(
        myServices.sharedPreferences.getString('id')!, itemId);

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.succes) {
      if (response['status'] == 'success') {
        setFavorite(itemId, '0');
        Get.rawSnackbar(
            duration: const Duration(seconds: 1),
            title: 'Notification',
            messageText: const Text(
              'Item removed from favorites',
              style: TextStyle(color: Colors.white),
            ));
      } else {
        //Get.defaultDialog(title: 'Warning', middleText: 'Warning');
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
