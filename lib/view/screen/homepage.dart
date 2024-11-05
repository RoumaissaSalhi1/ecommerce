import 'package:ecommece/core/class/handling_data_view.dart';
import 'package:ecommece/view/widget/home/categories_list.dart';
import 'package:ecommece/view/widget/home/custom_offer_card.dart';
import 'package:ecommece/view/widget/home/custom_searchbar_and_notifications.dart';
import 'package:ecommece/view/widget/home/custom_title_home.dart';
import 'package:ecommece/view/widget/home/items_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommece/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: GetBuilder<HomePageControllerImp>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchBarAndNotifications(
                  hintText: 'Find Product',
                  onPressedSearch: () {},
                  onPressedIcon: () {},
                ),
                const SizedBox(height: 16),
                const CustomOfferCard(
                  title: 'Big Sale!',
                  body: 'Up to 50% Discount',
                ),
                const SizedBox(height: 16),
                const CategoriesList(),
                const SizedBox(height: 16),
                const CustomTitleHome(title: 'Products for you'),
                const SizedBox(height: 16),
                ItemsList(),
                const SizedBox(height: 16),
                const CustomTitleHome(title: 'Offer'),
                const SizedBox(height: 16),
                ItemsList(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
