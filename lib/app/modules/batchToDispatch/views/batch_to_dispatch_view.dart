import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/batch_to_dispatch_controller.dart';

class BatchToDispatchView extends GetView<BatchToDispatchController> {
  const BatchToDispatchView({Key? key}) : super(key: key);
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
                            Get.toNamed(Routes.createBatch4);
                          },
                          child: SvgPicture.asset(
                            StaticAssets.elipse,
                            height: 20,
                          ),
                        ),
                        const Text(
                          'Batch to Dispatch',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: SvgPicture.asset(
                            StaticAssets.add,
                            height: 30,
                            width: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ])),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '4',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '5',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '6',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '7',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.assignedDriver);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appGreen.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.edit),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColor.appRed.withOpacity(0.2),
                            child: SvgPicture.asset(StaticAssets.delete),
                          )
                        ],
                      ),
                    )
                  ]),
                  child: Container(
                    height: 63,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: AppColor.veryLightGrey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              '8',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.lightGrey),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Batch ID#",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "FR-CHR-0464",
                                style: CustomTextStyle.font16RM,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Received date & time",
                                style: CustomTextStyle.font12R
                                    .copyWith(color: AppColor.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text.rich(TextSpan(
                                  text: '13-03-23',
                                  style: CustomTextStyle.font16RM,
                                  children: [
                                    const WidgetSpan(
                                        child: SizedBox(width: 10)),
                                    TextSpan(
                                        text: '04:54 PM',
                                        style: CustomTextStyle.font14R
                                            .copyWith(color: AppColor.grey)),
                                  ]))
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(StaticAssets.arrowForward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
