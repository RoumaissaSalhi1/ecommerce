import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommece/controller/items_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/view/widget/home/custom_searchbar_and_notifications.dart';
import 'package:ecommece/view/widget/items/categories_list_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Items',
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
            GridView.builder(
              shrinkWrap:
                  true, // take up only as much space as its content requires
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.67),
              itemBuilder: (context, index) => InkWell(
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  //color: Colors.white,
                  child: LayoutBuilder(builder: (context, constraint) {
                    double cardWidth = constraint.maxWidth;
                    return Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/6601/6601698.png',
                          fit: BoxFit.cover,
                          width: cardWidth,
                          height: cardWidth,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Laptop Surface Pro',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800),
                                ),
                                Text(
                                  'description',
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '200.99 \$',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade800,
                                          ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.favorite,
                                          color: ColorApp.primary,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
