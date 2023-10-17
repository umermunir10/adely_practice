import 'package:get/get.dart';

import '../controllers/create_batch3_controller.dart';

class CreateBatch3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBatch3Controller>(
      () => CreateBatch3Controller(),
    );
  }
}
