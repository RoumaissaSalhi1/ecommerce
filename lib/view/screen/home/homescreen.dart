import 'package:ecommece/controller/home_screen_controller.dart';
import 'package:ecommece/view/widget/home/custom_bottom_app_bar.dart';
import 'package:ecommece/view/widget/home/custom_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());

    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
        ),
        body: controller.listPage.elementAt(controller.currentIndex),
        floatingActionButton: const CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomAppBar(),
      );
    });
  }
}
