import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LanguageRow extends StatelessWidget {
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
          PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  const PopupMenuItem(child: Text('English')),
                  const PopupMenuItem(child: Text('Urdu')),
                  const PopupMenuItem(child: Text('Persian')),
                  const PopupMenuItem(child: Text('Spanish')),
                  const PopupMenuItem(child: Text('Russian'))
                ];
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      'English',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
