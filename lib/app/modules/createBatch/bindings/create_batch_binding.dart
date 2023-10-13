import 'package:get/get.dart';

import '../controllers/create_batch_controller.dart';

class CreateBatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBatchController>(
      () => CreateBatchController(),
    );
  }
}
