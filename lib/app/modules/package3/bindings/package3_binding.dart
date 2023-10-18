import 'package:get/get.dart';

import '../controllers/package3_controller.dart';

class Package3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Package3Controller>(
      () => Package3Controller(),
    );
  }
}
