import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key, this.leading, this.title, this.subtitle});

  final String? leading, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 120,
        ),
        Row(
          children: [
            SvgPicture.asset(
              leading ?? StaticAssets.mail,
              height: 18,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              title ?? 'ID',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            subtitle ?? 'Dispatcher@adely.com',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
