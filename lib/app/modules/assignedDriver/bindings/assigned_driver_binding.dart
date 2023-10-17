import 'package:get/get.dart';

import '../controllers/assigned_driver_controller.dart';

class AssignedDriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssignedDriverController>(
      () => AssignedDriverController(),
    );
  }
}
