import 'package:get/get.dart';

import '../controllers/package2_controller.dart';

class Package2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Package2Controller>(
      () => Package2Controller(),
    );
  }
}
