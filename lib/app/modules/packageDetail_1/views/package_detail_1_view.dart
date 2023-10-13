import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/package_detail_1_controller.dart';

class PackageDetail1View extends GetView<PackageDetail1Controller> {
  const PackageDetail1View({Key? key}) : super(key: key);
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
                            Get.toNamed(Routes.allpackages);
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 15, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 200,
                    height: 70,
                    child: Text(
                      'Apple Watch Serie 8',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blueText),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 317,
              width: 365,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 25, top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Package information',
                          style: CustomTextStyle.font16RM,
                        ),
                        SvgPicture.asset(StaticAssets.arrowDown)
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Type:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'Delivery parcel',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('Tracking ID:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              '1703620657009',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('Created date & time:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              '30-01-2023 07:50 PM',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('Weight:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              '6.544 kg',
                              style: CustomTextStyle.font14R,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Status:',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                          Text(
                            'Approved',
                            style: CustomTextStyle.font14R,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('Batch number:',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                          Text(
                            'FR-CHR-0464',
                            style: CustomTextStyle.font14R,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('Dimension:',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                          Text(
                            '31 x 35 41 cm',
                            style: CustomTextStyle.font14R,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Supplier address:',
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Apple Store, Main Market, Gullbarg II, Lahore.',
                      style: CustomTextStyle.font14R,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.packageDetail2);
              },
              child: Container(
                height: 60,
                width: 365,
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
                        'Consumer Details',
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
                Get.toNamed(Routes.packageDetail3);
              },
              child: Container(
                height: 60,
                width: 365,
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
                        'Home Delivery Setting',
                        style: CustomTextStyle.font16R,
                      ),
                      SvgPicture.asset(StaticAssets.arrowDown)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
