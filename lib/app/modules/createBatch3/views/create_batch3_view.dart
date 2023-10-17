import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
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
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Amir Mehmood',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: true,
                              groupValue: controller.isDone.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                if (controller.isDone == true) {
                                  controller.isDone.toggle();
                                }
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Salman Iqbal',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: false,
                              groupValue: controller.isDone2.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone2.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Mustafa',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: false,
                              groupValue: controller.isDone3.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone3.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Asif',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: false,
                              groupValue: controller.isDone4.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone4.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Faizan',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: false,
                              groupValue: controller.isDone5.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone5.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Amir Mehmood',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: false,
                              groupValue: controller.isDone6.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone6.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Amir Mehmood',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: false,
                              groupValue: controller.isDone7.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone7.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Asif',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: true,
                              groupValue: controller.isDone8.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone8.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Faizan',
                              style: CustomTextStyle.font16RM,
                            ),
                          ),
                          Obx(() => Radio(
                              value: true,
                              groupValue: controller.isDone9.value,
                              activeColor: Colors.black,
                              onChanged: (_) {
                                controller.isDone9.toggle();
                              }))
                        ],
                      )
                    ],
                  ),
                ),
              ),
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
