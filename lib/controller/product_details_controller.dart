import 'package:ecommece/data/model/items_model.dart';
import 'package:ecommece/data/model/product_color_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {
  late ItemsModel itemsModel;
  List<ProductColorModel> colorList = [
    ProductColorModel(id: 1, color: Colors.red.shade400, active: false),
    ProductColorModel(id: 1, color: Colors.amber.shade600, active: false),
    ProductColorModel(id: 1, color: Colors.indigo.shade900, active: true),
    ProductColorModel(id: 1, color: Colors.teal.shade800, active: false),
  ];
  initialData();
}

class ProductDetailsControllerImp extends ProductDetailsController {
  @override
  initialData() {
    itemsModel = Get.arguments['itemsModel'];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
