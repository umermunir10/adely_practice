import 'package:get/get.dart';

import '../controllers/package4_controller.dart';

class Package4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Package4Controller>(
      () => Package4Controller(),
    );
  }
}
