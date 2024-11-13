import 'package:ecommece/controller/product_details_controller.dart';
import 'package:ecommece/core/functions/translateDatabase.dart';
import 'package:ecommece/view/widget/productdetails/add_to_card_button.dart';
import 'package:ecommece/view/widget/productdetails/product_image.dart';
import 'package:ecommece/view/widget/productdetails/product_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailsControllerImp());

    return GetBuilder<ProductDetailsControllerImp>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            translateDatabase(controller.itemsModel.categoryNameAr!,
                controller.itemsModel.categoryName!),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ProductImage(),
                  ProductInfo(),
                ],
              ),
            ),
            const AddToCardButton(),
          ],
        ),
      );
    });
  }
}
