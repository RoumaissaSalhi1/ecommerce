import 'package:ecommece/core/class/crud.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Crud(), fenix: true);
  }
}
