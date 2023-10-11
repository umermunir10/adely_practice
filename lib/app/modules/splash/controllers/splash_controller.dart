import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void nextScreen() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Get.offNamed(Routes.login));
  }

  @override
  void onInit() {
    nextScreen();
    super.onInit();
  }
}
