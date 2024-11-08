import 'package:ecommece/controller/home_screen_controller.dart';
import 'package:ecommece/data/datasource/static/static_bottom_app_bar_item_list.dart';
import 'package:ecommece/view/widget/home/custom_button_bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.find<HomeScreenControllerImp>();
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        height: 70,
        child: Row(
          children: [
            ...List.generate(
              controller.listPage.length + 1,
              (index) {
                int correctedIndex = index > 2 ? index - 1 : index;
                return index == 2
                    ? const Spacer()
                    : CustomButtonBottomAppBar(
                        text: bottomAppBarItems[correctedIndex].label,
                        onPressed: () {
                          controller.changePage(correctedIndex);
                        },
                        icon: bottomAppBarItems[correctedIndex].icon,
                        iconOutlined:
                            bottomAppBarItems[correctedIndex].iconOutlined,
                        active: controller.selectedPage(correctedIndex),
                      );
              },
            ),
          ],
        ),
      );
    });
  }
}
