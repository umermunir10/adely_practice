import 'package:adely_dispatcher/app/modules/profile/views/profile_view.dart';
import 'package:adely_dispatcher/app/modules/settings/views/settings_view.dart';
import 'package:adely_dispatcher/app/modules/tracking/views/tracking_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt currentIndex = 1.obs;
  List<String> navTitle = ['Tracking', 'Profile', 'Setting'];
  List<Widget> views = [
    const TrackingView(),
    const ProfileView(),
    const SettingsView(),
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
