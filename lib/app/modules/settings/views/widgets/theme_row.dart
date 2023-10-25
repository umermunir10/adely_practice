import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/modules/settings/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ThemeChanger extends GetView<SettingsController> {
  final bool isChanged = true;
  final String? leading, title, menu;
  const ThemeChanger({super.key, this.leading, this.title, this.menu});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 22),
      child: Row(
        children: [
          SvgPicture.asset(leading ?? StaticAssets.lock),
          const SizedBox(
            width: 15,
          ),
          Text(
            title ?? 'Notifications',
            style: const TextStyle(fontSize: 16),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Obx(() => Switch.adaptive(
                  value: controller.isDarkMode.value,
                  onChanged: (value) => (controller.isDarkMode.toggle()),
                )),
          )
        ],
      ),
    );
  }
}
