import 'package:get/get.dart';

import '../controllers/create_batch2_controller.dart';

class CreateBatch2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBatch2Controller>(
      () => CreateBatch2Controller(),
    );
  }
}
