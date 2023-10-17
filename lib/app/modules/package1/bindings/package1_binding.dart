import 'package:get/get.dart';

import '../controllers/package1_controller.dart';

class Package1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Package1Controller>(
      () => Package1Controller(),
    );
  }
}
