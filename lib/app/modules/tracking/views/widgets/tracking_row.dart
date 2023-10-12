import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TrackingRow extends StatelessWidget {
  const TrackingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.allpackages);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: 63,
          width: 345,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Batch ID#",
                    style:
                        CustomTextStyle.font12R.copyWith(color: AppColor.grey),
                  ),
                  Text(
                    "FR-CHR-0464",
                    style: CustomTextStyle.font16RM,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Received date & time",
                    style:
                        CustomTextStyle.font12R.copyWith(color: AppColor.grey),
                  ),
                  Text.rich(TextSpan(
                      text: '13-03-23',
                      style: CustomTextStyle.font16RM,
                      children: [
                        const WidgetSpan(child: SizedBox(width: 10)),
                        TextSpan(
                            text: '04:54 PM',
                            style: CustomTextStyle.font14R
                                .copyWith(color: AppColor.grey)),
                      ]))
                ],
              ),
              SvgPicture.asset(StaticAssets.arrowForward)
            ],
          ),
        ),
      ),
    );
  }
}
