import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../data/configs/app_theme.dart';
import '../controllers/package2_controller.dart';

class Package2View extends GetView<Package2Controller> {
  const Package2View({Key? key}) : super(key: key);
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
                            Get.toNamed(Routes.package1);
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
        body: Padding(
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
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.package1);
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Package Information',
                          style: CustomTextStyle.font16R,
                        ),
                        SvgPicture.asset(StaticAssets.arrowDown)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Package Information',
                            style: CustomTextStyle.font16R,
                          ),
                          SvgPicture.asset(StaticAssets.arrowDown)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Salman Iqbal',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Phone:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '+92 300 123 45 67',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'salman@gmail.com',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Route:',
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '1094241',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.package3);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Consumer details',
                          style: CustomTextStyle.font16R,
                        ),
                        SvgPicture.asset(StaticAssets.arrowDown)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.package4);
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Home delivery setting',
                          style: CustomTextStyle.font16R,
                        ),
                        SvgPicture.asset(StaticAssets.arrowDown)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
