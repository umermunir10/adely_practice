import 'package:get/get.dart';

import '../controllers/batch_to_dispatch_controller.dart';

class BatchToDispatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BatchToDispatchController>(
      () => BatchToDispatchController(),
    );
  }
}
