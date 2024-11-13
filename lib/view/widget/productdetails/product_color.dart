import 'package:ecommece/controller/product_details_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductColor extends GetView<ProductDetailsControllerImp> {
  const ProductColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select color',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.black),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 33,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.colorList.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: controller.colorList[index].active!
                      ? const [
                          BoxShadow(
                            color: ColorApp.primary,
                            spreadRadius: 2,
                          ),
                        ]
                      : const [],
                  shape: BoxShape.circle,
                  color: controller.colorList[index].color,
                ),
                width: 33,
                margin: const EdgeInsets.only(right: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
