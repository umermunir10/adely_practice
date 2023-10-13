import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PackagesRow extends StatelessWidget {
  final String name;
  const PackagesRow({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.packageDetail1);
      },
      child: Container(
        height: 150,
        width: 345,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 72,
                  width: 72,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '',
                      style: CustomTextStyle.font16RB,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ID #: 1703620657007',
                      style: CustomTextStyle.font14R
                          .copyWith(color: AppColor.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Batch #: FR-CHR-0464',
                      style: CustomTextStyle.font14R
                          .copyWith(color: AppColor.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '23-03-13  04:59PM',
                      style: CustomTextStyle.font14R
                          .copyWith(color: AppColor.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CustomButton(
                          buttonName: 'Approve',
                          backgroundColor: Colors.white,
                          color: AppColor.appGreen,
                          borderColor: AppColor.grey,
                          height: 28,
                          width: 84,
                          type: ButtonVariant.bordered,
                          borderWidth: 1,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomButton(
                          buttonName: 'Return',
                          backgroundColor: Colors.white,
                          borderColor: AppColor.grey,
                          height: 28,
                          width: 84,
                          type: ButtonVariant.bordered,
                          color: AppColor.appRed,
                          borderWidth: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 50),
                child: SvgPicture.asset(StaticAssets.arrowForward),
              )
            ],
          ),
        ),
      ),
    );
  }
}
