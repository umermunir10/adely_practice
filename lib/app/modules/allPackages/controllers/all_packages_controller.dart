import 'package:adely_dispatcher/app/data/utils/models/packagesModels.dart';
import 'package:get/get.dart';

class AllPackagesController extends GetxController {
  RxList<PackageModels> packageList = <PackageModels>[
    PackageModels(title: 'Apple Watch Series 8'),
    PackageModels(title: 'Apple Watch Ultra'),
    PackageModels(title: 'Apple Headphone'),
    PackageModels(title: 'Apple Watch Ultra'),
  ].obs;
}
