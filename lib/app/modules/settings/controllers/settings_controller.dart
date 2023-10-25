import 'package:get/get.dart';

class SettingsController extends GetxController {
  RxBool isDarkMode = false.obs;

  RxString selectedValue = "English".obs;
  
  RxList<String> languages = <String>[
    'English',
    'Urdu',
    'Persian',
    'Spanish',
    'Arabic',
  ].obs;
}
