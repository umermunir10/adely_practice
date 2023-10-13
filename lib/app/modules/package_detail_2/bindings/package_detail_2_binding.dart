import 'package:get/get.dart';

import '../controllers/package_detail_2_controller.dart';

class PackageDetail2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackageDetail2Controller>(
      () => PackageDetail2Controller(),
    );
  }
}
