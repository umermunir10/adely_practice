import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssigendDriverRow extends StatelessWidget {
  const AssigendDriverRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 150,
        width: double.infinity,
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
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apple Watch Series 8',
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
                    Text.rich(TextSpan(
                        text: 'Shipment Status: ',
                        style: CustomTextStyle.font14R
                            .copyWith(color: AppColor.grey),
                        children: [
                          TextSpan(
                              text: 'In-Progress',
                              style: TextStyle(
                                  color: AppColor.appOrange,
                                  fontWeight: FontWeight.w500))
                        ]))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 30,
                ),
                child: SvgPicture.asset(StaticAssets.arrowForward),
              )
            ],
          ),
        ),
      ),
    );
  }
}
