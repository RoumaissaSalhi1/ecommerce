import 'package:ecommece/controller/items_controller.dart';
import 'package:ecommece/core/class/handling_data_view.dart';
import 'package:ecommece/data/model/items_model.dart';
import 'package:ecommece/view/widget/home/custom_searchbar_and_notifications.dart';
import 'package:ecommece/view/widget/items/categories_list_items.dart';
import 'package:ecommece/view/widget/items/custom_items_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strings/strings.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());

    return GetBuilder<ItemsControllerImp>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              Strings.toCapitalised(
                  controller.categoriesData[controller.selectedCategory].name!),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            centerTitle: true,
          ),
          body: Container(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: ListView(
              children: [
                CustomSearchBarAndNotifications(
                  hintText: 'Find product',
                  onPressedSearch: () {},
                  onPressedIcon: () {},
                ),
                const SizedBox(height: 16),
                const CategoriesListItems(),
                const SizedBox(height: 16),
                HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: CustomItemsList(
                    items: controller.itemsData,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
