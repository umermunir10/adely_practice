import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  const BottomNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.views[controller.currentIndex.value]),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(
          children: [
            ...controller.navTitle.asMap().entries.map((e) => Obx(
                  () => Expanded(
                    child: InkWell(
                      onTap: () {
                        controller.setIndex(e.key);
                      },
                      child: Container(
                        color: e.key != controller.currentIndex.value
                            ? AppColor.bottomBarColor
                            : AppColor.primaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(controller.icons[e.key],
                                color: controller.currentIndex.value == e.key
                                    ? AppColor.secondaryColor
                                    : AppColor.grey),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              e.value,
                              style: TextStyle(
                                  color: controller.currentIndex.value == e.key
                                      ? AppColor.secondaryColor
                                      : AppColor.grey,
                                  fontWeight:
                                      controller.currentIndex.value != e.key
                                          ? FontWeight.w300
                                          : FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
