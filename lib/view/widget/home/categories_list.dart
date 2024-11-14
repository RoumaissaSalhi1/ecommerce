import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommece/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:strings/strings.dart';

class CategoriesList extends GetView<HomePageControllerImp> {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.25 + 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categoriesData.length,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width * 0.25, // Control item width
          margin: const EdgeInsets.only(right: 8.0), // Space between items
          child: Category(
            index: index,
          ),
        ),
      ),
    );
  }
}

class Category extends GetView<HomePageControllerImp> {
  const Category({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        controller.goToItems(controller.categoriesData, index, controller.categoriesData[index].id!);
      },
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1, // Makes the card square
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior:
                  Clip.antiAlias, // Ensures rounded corners for the image
              child: CachedNetworkImage(
                imageUrl: controller.categoriesData[index].image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            Strings.toCapitalised(controller.categoriesData[index].name!),
            style: Theme.of(context).textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
