import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/package_detail3_controller.dart';

class PackageDetail3View extends GetView<PackageDetail3Controller> {
  const PackageDetail3View({Key? key}) : super(key: key);
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
                          Get.toNamed(Routes.packageDetail1);
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
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13, left: 15, bottom: 15),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                  ),
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
            Container(
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
                      'Package Information',
                      style: CustomTextStyle.font16R,
                    ),
                    SvgPicture.asset(StaticAssets.arrowDown)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
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
                      'Cunsumer details',
                      style: CustomTextStyle.font16R,
                    ),
                    SvgPicture.asset(StaticAssets.arrowDown)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
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
          ],
        ),
      ),
    );
  }
}
