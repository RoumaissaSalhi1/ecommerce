import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorApp.primary25,
      onPressed: () {
        Get.offAllNamed(AppRoute.cart);
      },
      shape: const CircleBorder(),
      child: const Icon(Icons.shopping_basket_outlined),
    );
  }
}
