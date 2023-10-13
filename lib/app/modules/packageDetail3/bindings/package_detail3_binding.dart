import 'package:get/get.dart';

import '../controllers/package_detail3_controller.dart';

class PackageDetail3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackageDetail3Controller>(
      () => PackageDetail3Controller(),
    );
  }
}
