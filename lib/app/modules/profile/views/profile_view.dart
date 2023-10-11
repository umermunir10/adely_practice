import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/modules/profile/views/widgets/row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 500),
        child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image.asset(
                StaticAssets.appBarBg,
                width: 400,
                height: 193,
                fit: BoxFit.fitWidth,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 50,
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: -140,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: AppColor.primaryBackgroundColor,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: AssetImage(StaticAssets.personFilled),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'John Doe',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
              ),
            ]),
      ),
      backgroundColor: AppColor.scaffolColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 25),
              child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(StaticAssets.pen)),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 40), child: RowWidget()),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        StaticAssets.phone,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Phone',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('+32451632541',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        StaticAssets.lock,
                        height: 22,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('************',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        StaticAssets.site,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Company Name',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Example Limited',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        StaticAssets.person,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Role',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Dispatcher',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        StaticAssets.location,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Address',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text('Rue des Mescottes 15, 1080 Ixelles',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
