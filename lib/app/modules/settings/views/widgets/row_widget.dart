import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsRowWidget extends StatelessWidget {
  final String? leading, title, menu;
  const SettingsRowWidget({super.key, this.leading, this.title, this.menu});

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
        ],
      ),
    );
  }
}
