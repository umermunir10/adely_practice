import 'package:get/get.dart';

class CreateBatch3Controller extends GetxController {
  RxBool isDone = false.obs;
  RxString selectedDriver = ''.obs;

  List<String> driver = [
    'Amir Mehmood',
    'Salman Iqbal',
    'Mustafa Zahid',
    'Ali Fazal',
    'Saad Khan',
    'Awais Kazmi',
    'Ali Saeed',
    'Husnain Ali',
    'Asher Wajahat'
  ];
}
