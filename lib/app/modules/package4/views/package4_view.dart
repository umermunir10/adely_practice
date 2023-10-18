import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/package4_controller.dart';

class Package4View extends GetView<Package4Controller> {
  const Package4View({Key? key}) : super(key: key);
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
                            Get.toNamed(Routes.package3);
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
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.package3);
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
                Container(
                  height: 800,
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
                              'Home delivery setting',
                              style: CustomTextStyle.font16RM,
                            ),
                            SvgPicture.asset(StaticAssets.arrowDown)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, bottom: 10),
                        child: Text(
                          'Settings',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Leave outside door',
                              style: CustomTextStyle.font14R,
                            ),
                            CustomButton(
                              buttonName: 'Yes',
                              backgroundColor: AppColor.veryLightGrey,
                              color: AppColor.appGreen,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 240,
                              child: Text(
                                'Knock on door instead of using doorbell',
                                style: CustomTextStyle.font14R,
                              ),
                            ),
                            CustomButton(
                              buttonName: 'No',
                              backgroundColor: AppColor.veryLightGrey,
                              color: AppColor.appRed,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Leave with neighbor',
                              style: CustomTextStyle.font14R,
                            ),
                            CustomButton(
                              buttonName: 'Yes',
                              backgroundColor: AppColor.veryLightGrey,
                              color: AppColor.appGreen,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alternatively leave with neighbor',
                              style: CustomTextStyle.font14R,
                            ),
                            CustomButton(
                              buttonName: 'No',
                              backgroundColor: AppColor.veryLightGrey,
                              color: AppColor.appRed,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Signature required',
                              style: CustomTextStyle.font14R,
                            ),
                            CustomButton(
                              buttonName: 'No',
                              backgroundColor: AppColor.veryLightGrey,
                              color: AppColor.appRed,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Identification check required',
                              style: CustomTextStyle.font14R,
                            ),
                            CustomButton(
                              buttonName: 'Yes',
                              backgroundColor: AppColor.veryLightGrey,
                              color: AppColor.appGreen,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Minimum age of recipient ',
                              style: CustomTextStyle.font14R,
                            ),
                            CustomButton(
                              buttonName: '10',
                              backgroundColor: AppColor.veryLightGrey,
                              color: Colors.black,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 240,
                              child: Text(
                                'Recipient must be same as end customer',
                                style: CustomTextStyle.font14R,
                              ),
                            ),
                            CustomButton(
                              buttonName: 'No',
                              backgroundColor: AppColor.veryLightGrey,
                              color: AppColor.appRed,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 20, 0),
                        child: Divider(
                          thickness: 2,
                          color: AppColor.veryLightGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 240,
                              child: Text(
                                'Minimum number of times to retry a failed delivery',
                                style: CustomTextStyle.font14R,
                              ),
                            ),
                            CustomButton(
                              buttonName: '0',
                              backgroundColor: AppColor.veryLightGrey,
                              color: Colors.black,
                              borderColor: Colors.transparent,
                              height: 35,
                              width: 60,
                              type: ButtonVariant.bordered,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
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
