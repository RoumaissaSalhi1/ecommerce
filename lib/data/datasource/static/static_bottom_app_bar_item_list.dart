import 'package:ecommece/data/model/bottom_app_bar_item_model.dart';
import 'package:flutter/material.dart';

List<BottomAppBarItemModel> bottomAppBarItems = [
  BottomAppBarItemModel(
    label: 'Home',
    icon: Icons.home,
    iconOutlined: Icons.home_outlined,
  ),
  BottomAppBarItemModel(
    label: 'Favorites',
    icon: Icons.favorite,
    iconOutlined: Icons.favorite_outline,
  ),
  BottomAppBarItemModel(
    label: 'Settings',
    icon: Icons.settings,
    iconOutlined: Icons.settings_outlined,
  ),
  BottomAppBarItemModel(
    label: 'Profile',
    icon: Icons.person,
    iconOutlined: Icons.person_outline,
  ),
];
