import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ecommece/controller/home_page_controller.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/core/constant/imageasset.dart';
import 'package:strings/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageControllerImp());
    controller.getData();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Find Product',
                      hintStyle: const TextStyle(fontSize: 20),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                    ),
                  )),
                  const SizedBox(width: 10),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 150,
                color: ColorApp.primary,
                child: Stack(
                  children: [
                    Positioned.fill(
                      bottom: -60,
                      child: SvgPicture.asset(
                        Imageasset.wave,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: ListTile(
                        title: Text(
                          'Big Sale!',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(color: Colors.white),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Up to 50% Discount',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Fixed-height container for the GridView
            Expanded(
              child: GridView.builder(
                itemCount: controller.categoriesData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1, // Makes the card square
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          clipBehavior: Clip
                              .antiAlias, // Ensures rounded corners for the image
                          child: Image.network(
                            controller.categoriesData[index].image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Text(
                          Strings.toCapitalised(
                              controller.categoriesData[index].name!),
                          style: Theme.of(context).textTheme.labelLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
