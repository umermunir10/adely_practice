import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/modules/settings/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LanguageRow extends GetView<SettingsController> {
  final String? leading, title, menu;
  const LanguageRow({super.key, this.leading, this.title, this.menu});

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
          Obx(() => PopupMenuButton(
              initialValue: controller.selectedValue.value,
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  ...controller.languages
                      .asMap()
                      .entries
                      .map((e) => PopupMenuItem(
                            child: Text(e.value),
                            onTap: () {
                              controller.selectedValue.value = e.value;
                            },
                          ))
                ];
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      controller.selectedValue.value,
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    )
                  ],
                ),
              )))
        ],
      ),
    );
  }
}
