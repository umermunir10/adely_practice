import 'package:get/get.dart';

class CreateBatch4Controller extends GetxController {
RxBool isDone = false.obs;
  RxString selectedID = ''.obs;

  List<String> idList = [
    '112233',
    '445566',
    '778899',
    '998877',
    '665544',
    '332211',
    '221133',
    '554466',
    '887799'
  ];
}
