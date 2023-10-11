import 'package:adely_dispatcher/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt currentIndex = 1.obs;
  List<String> navTitle = ['Batches', 'Profile', 'Setting'];
  List<Widget> views = [
    Container(
      height: 500,
      width: 500,
      color: Colors.amber,
    ),
    const ProfileView(),
    Container(
      height: 500,
      width: 500,
      color: Colors.green,
    ),
  ];
  List<IconData> icons = [
    Icons.fact_check_outlined,
    Icons.person,
    Icons.settings
  ];

  void setIndex(int index) {
    currentIndex.value = index;
  }
}
