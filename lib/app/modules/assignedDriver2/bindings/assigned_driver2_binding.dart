import 'package:get/get.dart';

import '../controllers/assigned_driver2_controller.dart';

class AssignedDriver2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssignedDriver2Controller>(
      () => AssignedDriver2Controller(),
    );
  }
}
