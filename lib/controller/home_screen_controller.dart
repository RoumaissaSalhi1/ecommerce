import 'package:ecommece/view/screen/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class HomeScreenController extends GetxController {
  int currentIndex = 0;
  List<Widget> listPage = [
    const HomePage(),
    const Center(
      child: Text('page 2'),
    ),
    const Center(
      child: Text('page 3'),
    ),
    const Center(
      child: Text('page 4'),
    ),
  ];

  changePage(int currentPage);
  bool selectedPage(int index);
}

class HomeScreenControllerImp extends HomeScreenController {
  @override
  changePage(int currentPage) {
    currentIndex = currentPage;
    update();
  }

  @override
  bool selectedPage(int index) {
    return currentIndex == index;
  }
}
