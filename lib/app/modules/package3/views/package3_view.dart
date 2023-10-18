import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/package3_controller.dart';

class Package3View extends GetView<Package3Controller> {
  const Package3View({Key? key}) : super(key: key);
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
                            Get.toNamed(Routes.package2);
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
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.package2);
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
                            'Driver & Route',
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
                  height: 526,
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
                            left: 15, right: 25, top: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Consumer Details',
                              style: CustomTextStyle.font16RM,
                            ),
                            SvgPicture.asset(StaticAssets.arrowDown)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, bottom: 20),
                        child: Text(
                          'John Doe',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 30),
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
                                const Text('Reference person:',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Text(
                                  'N/A',
                                  style: CustomTextStyle.font14R,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('Phone:',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Text(
                                  '+92 300 123 45 67',
                                  style: CustomTextStyle.font14R,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('Additional info.',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Text(
                                  'N/A',
                                  style: CustomTextStyle.font14R,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Social Security No.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'N/A',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('E-mail:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'johndoe@gmail.com',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('C/o.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'N/A',
                                style: CustomTextStyle.font14R,
                              ),
                            ],
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Consumer Address:',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          '1R Building, Mini Market, Gullberg II, Lahore.',
                          // '1R Building, Mini Market, Gullberg II, Lahore.',
                          style: CustomTextStyle.font14R,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Door code:',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Text(
                                  'N/A',
                                  style: CustomTextStyle.font14R,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text('Post code:',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Text(
                                  '54000',
                                  style: CustomTextStyle.font14R,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 125,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Floor',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'Ground Floor',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Country:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'Pakistan',
                                style: CustomTextStyle.font14R,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
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
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
