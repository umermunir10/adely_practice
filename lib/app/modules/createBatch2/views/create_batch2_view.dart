import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/modules/createBatch2/views/batchRow.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/create_batch2_controller.dart';

class CreateBatch2View extends GetView<CreateBatch2Controller> {
  const CreateBatch2View({Key? key})
      : super(
          key: key,
        );

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
                          Get.toNamed(Routes.createBatch);
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Packages',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const batchRow();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: 6),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.createBatch3);
        },
        backgroundColor: AppColor.appGreen,
        child: SvgPicture.asset(StaticAssets.arrowNext),
      ),
    );
  }
}
