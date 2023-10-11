import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/modules/settings/views/widgets/language_row.dart';
import 'package:adely_dispatcher/app/modules/settings/views/widgets/row_widget.dart';
import 'package:adely_dispatcher/app/modules/settings/views/widgets/theme_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 70),
          child: AppBar(
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                  StaticAssets.elipse,
                ),
              ),
              title: const Text('Settings'),
              flexibleSpace: const Image(
                image: AssetImage(StaticAssets.appBarBg),
                fit: BoxFit.cover,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: SvgPicture.asset(StaticAssets.notificationOutlined),
                )
              ]),
        ),
        backgroundColor: AppColor.scaffolColor,
        body: const Column(
          children: [
            SettingsRowWidget(
              leading: StaticAssets.notification,
            ),
            LanguageRow(
              leading: StaticAssets.language,
              title: 'Language',
            ),
            ThemeChanger(
              leading: StaticAssets.theme,
              title: 'Dark Mode',
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 22, right: 22),
              child: Divider(
                thickness: 1,
              ),
            ),
            SettingsRowWidget(
              leading: StaticAssets.logout,
              title: 'Log Out',
            ),
          ],
        ));
  }
}
