import 'package:ecommece/controller/items_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/core/functions/translateDatabase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:strings/strings.dart';

class CategoriesListItems extends GetView<ItemsControllerImp> {
  const CategoriesListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categoriesData.length,
        itemBuilder: (context, index) => Category(
          index: index,
        ),
      ),
    );
  }
}

class Category extends GetView<ItemsControllerImp> {
  const Category({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        controller.changeCategory(index, controller.categoriesData[index].id!);
      },
      child: GetBuilder<ItemsControllerImp>(builder: (controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: index == controller.selectedCategory
                ? ColorApp.primary10
                : null,
          ),
          child: Text(
            translateDatabase(controller.categoriesData[index].nameAr!,
                controller.categoriesData[index].name!),
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: index == controller.selectedCategory
                    ? Theme.of(context).colorScheme.primary
                    : null),
            textAlign: TextAlign.center,
          ),
        );
      }),
    );
  }
}
