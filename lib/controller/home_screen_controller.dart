import 'package:ecommece/view/screen/homepage.dart';
import 'package:ecommece/view/screen/myfavorite.dart';
import 'package:ecommece/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class HomeScreenController extends GetxController {
  int currentIndex = 0;
  List<Map> listPage = [
    {'page': const HomePage(), "title": 'Home'},
    {'page': const MyFavorite(), 'title': 'Favorite'},
    {'page': const Settings(), 'title': 'Settings'},
    {'page': const Settings(), 'title': 'Profile'},
  ];

  changePage(int currentPage);
  bool selectedPage(int index);
  Widget body();
  String title();
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

  @override
  Widget body() {
    return listPage.elementAt(currentIndex)['page'];
  }

  @override
  String title() {
    return listPage.elementAt(currentIndex)['title'];
  }
}
