import 'package:ecommece/controller/items_controller.dart';
import 'package:ecommece/controller/my_favorite_controller.dart';
import 'package:ecommece/core/class/handling_data_view.dart';
import 'package:ecommece/view/widget/items/custom_items_list.dart';
import 'package:ecommece/view/widget/myfavorite/favorite_items_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            GetBuilder<MyFavoriteControllerImp>(builder: (controller) {
              return HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: FavoriteItemsList(
                  favItems: controller.favoriteData,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
