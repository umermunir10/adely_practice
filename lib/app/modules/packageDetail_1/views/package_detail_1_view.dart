import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
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
          preferredSize: const Size(double.infinity, 100),
          child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image.asset(
                  StaticAssets.appBarBg,
                  width: double.infinity,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 15, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
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
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ExpansionTile(
                      backgroundColor: AppColor.primaryBackgroundColor,
                      title: Text(
                        'Package Information',
                        style: CustomTextStyle.font16RM,
                      ),
                      collapsedIconColor: Colors.black,
                      iconColor: Colors.black,
                      children: [
                        Container(
                          height: 260,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Type:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                        Text(
                                          'Delivery parcel',
                                          style: CustomTextStyle.font14R,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text('Tracking ID:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                        Text(
                                          '1703620657009',
                                          style: CustomTextStyle.font14R,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text('Created date & time:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                        Text(
                                          '30-01-2023 07:50 PM',
                                          style: CustomTextStyle.font14R,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text('Weight:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Status:',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      Text(
                                        'Approved',
                                        style: CustomTextStyle.font14R,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text('Batch number:',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      Text(
                                        'FR-CHR-0464',
                                        style: CustomTextStyle.font14R,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text('Dimension:',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
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
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
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
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ExpansionTile(
                      title: Text(
                        'Consumer Details',
                        style: CustomTextStyle.font16RM,
                      ),
                      iconColor: Colors.black,
                      collapsedIconColor: Colors.black,
                      children: [
                        Container(
                          height: 485,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15, bottom: 20),
                                child: Text(
                                  'John Doe',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Reference person:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                        Text(
                                          'N/A',
                                          style: CustomTextStyle.font14R,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text('Phone:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                        Text(
                                          '+92 300 123 45 67',
                                          style: CustomTextStyle.font14R,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text('Additional info.',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Social Security No.',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      Text(
                                        'N/A',
                                        style: CustomTextStyle.font14R,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text('E-mail:',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      Text(
                                        'johndoe@gmail.com',
                                        style: CustomTextStyle.font14R,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text('C/o.',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
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
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Door code:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                        Text(
                                          'N/A',
                                          style: CustomTextStyle.font14R,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text('Post code:',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Floor',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      Text(
                                        'Ground Floor',
                                        style: CustomTextStyle.font14R,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text('Country:',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
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
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ExpansionTile(
                      title: Text(
                        'Home Delivery Setting',
                        style: CustomTextStyle.font16RM,
                      ),
                      collapsedIconColor: Colors.black,
                      iconColor: Colors.black,
                      children: [
                        Container(
                          height: 750,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15, bottom: 10),
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 20, 0),
                                child: Divider(
                                  thickness: 2,
                                  color: AppColor.veryLightGrey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 20, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
