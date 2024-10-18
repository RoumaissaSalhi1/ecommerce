import 'package:ecommece/binding.dart';
import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/core/localization/changelocal.dart';
import 'package:ecommece/core/localization/translaion.dart';
import 'package:ecommece/routes.dart';
import 'package:ecommece/view/screen/auth/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommece/core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //inject local controller
      locale: controller.language,
      translations: MyTranslation(),
      theme: ThemeData(
        fontFamily: "Cairo",
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorApp.primary,
        ),
        useMaterial3: true,
      ),
      // home: const Language(),
      initialBinding: MyBinding(),
      // routes: routes,
      getPages: routes,
    );
  }
}
