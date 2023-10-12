import 'package:get/get.dart';

import '../controllers/package_detail_1_controller.dart';

class PackageDetail1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackageDetail1Controller>(
      () => PackageDetail1Controller(),
    );
  }
}
