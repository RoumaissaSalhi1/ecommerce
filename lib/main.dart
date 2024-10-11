import 'package:ecommece/core/localization/changelocal.dart';
import 'package:ecommece/core/localization/translaion.dart';
import 'package:ecommece/routes.dart';
import 'package:ecommece/view/screen/auth/language.dart';
import 'package:ecommece/view/screen/onboarding.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
