import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/modules/createBatch3/views/widgets/driverNames.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/create_batch3_controller.dart';

class CreateBatch3View extends GetView<CreateBatch3Controller> {
  const CreateBatch3View({Key? key}) : super(key: key);
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
                          Get.toNamed(Routes.createBatch2);
                        },
                        child: SvgPicture.asset(
                          StaticAssets.elipse,
                          height: 20,
                        ),
                      ),
                      const Text(
                        'Create Batch',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Assign Driver',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text('Skip Driver',
                      style: TextStyle(color: Colors.red, fontSize: 14))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ...List.generate(
                  controller.driver.length,
                  (index) => Obx(() => driverList(
                      name: controller.driver[index],
                      selectedValue: controller.selectedDriver.value,
                      onChange: (value) {
                        controller.selectedDriver.value = value;
                      }))),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.createBatch4);
        },
        backgroundColor: AppColor.appGreen,
        child: SvgPicture.asset(StaticAssets.arrowNext),
      ),
    );
  }
}
