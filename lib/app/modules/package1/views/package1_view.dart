import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/modules/package1/views/widgets/consumerDetails.dart';
import 'package:adely_dispatcher/app/modules/package1/views/widgets/deliverySetting.dart';
import 'package:adely_dispatcher/app/modules/package1/views/widgets/driverRoute.dart';
import 'package:adely_dispatcher/app/modules/package1/views/widgets/packageInfo.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/package1_controller.dart';

class Package1View extends GetView<Package1Controller> {
  const Package1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffolColor,
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 500),
            child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    StaticAssets.appBarBg,
                    width: 400,
                    height: 150,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.assignedDriver2);
                          },
                          child: SvgPicture.asset(
                            StaticAssets.elipse,
                            height: 20,
                          ),
                        ),
                        const Text(
                          'Package Detail',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ])),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      buttonName: 'Download Shipping Label',
                      color: AppColor.appGreen,
                      type: ButtonVariant.filled,
                      height: 36,
                      width: 180,
                      textColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CustomButton(
                      buttonName: 'Download Shipping Label',
                      color: Colors.black,
                      type: ButtonVariant.filled,
                      height: 36,
                      width: 180,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 82,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Apple Watch Ultra',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const PackageInformation(),
                const SizedBox(
                  height: 10,
                ),
                const DriverRoute(),
                const SizedBox(
                  height: 10,
                ),
                const ConsumerDetails(),
                const SizedBox(
                  height: 10,
                ),
                const DeliverySetting(),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
