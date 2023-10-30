import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/modules/assignedDriver/views/assignedDriverRow.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/assigned_driver_controller.dart';

class AssignedDriverView extends GetView<AssignedDriverController> {
  const AssignedDriverView({Key? key}) : super(key: key);
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
                            Get.toNamed(Routes.batchToDispatch);
                          },
                          child: SvgPicture.asset(
                            StaticAssets.elipse,
                            height: 20,
                          ),
                        ),
                        const Text(
                          'All Packages',
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[350],
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.assignedDriver2);
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(top: 22, left: 15),
                      child: Text.rich(TextSpan(
                          text: 'Driver not assigned yet. ',
                          style: CustomTextStyle.font14R
                              .copyWith(color: AppColor.grey),
                          children: const [
                            TextSpan(
                              text: 'Assign Driver',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),

                              // CustomTextStyle.font14RB
                              //     .copyWith(color: AppColor.blueText),
                            )
                          ]))),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const AssigendDriverRow();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 0,
                      );
                    },
                    itemCount: 5),
              )
            ],
          ),
        ));
  }
}
