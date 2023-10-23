import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class DeliverySetting extends StatelessWidget {
  const DeliverySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ExpansionTile(
            title: Text(
              'Home delivery setting',
              style: CustomTextStyle.font16RM,
            ),
            iconColor: Colors.black,
            collapsedIconColor: Colors.black,
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
            ]),
      ),
    );
  }
}
