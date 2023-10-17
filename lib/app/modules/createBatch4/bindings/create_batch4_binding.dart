import 'package:get/get.dart';

import '../controllers/create_batch4_controller.dart';

class CreateBatch4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBatch4Controller>(
      () => CreateBatch4Controller(),
    );
  }
}
