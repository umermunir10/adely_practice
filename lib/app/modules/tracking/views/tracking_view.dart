import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_text_feild.dart';
import 'package:adely_dispatcher/app/modules/tracking/views/widgets/tracking_row.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/tracking_controller.dart';

class TrackingView extends GetView<TrackingController> {
  const TrackingView({Key? key}) : super(key: key);
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
                  height: 193,
                  fit: BoxFit.fitWidth,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Batches',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 120),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: CustomTextField(
                        name: 'name',
                        hint: '    Search by Batch',
                        textInputType: TextInputType.name,
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        borderRadius: 8,
                      ),
                    )),
              ]),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomButton(
                    buttonName: 'Received Batches',
                    type: ButtonVariant.filled,
                    height: 40,
                    width: 165,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    buttonName: 'Received Batches',
                    onPressed: () {
                      Get.toNamed(Routes.createBatch);
                    },
                    type: ButtonVariant.filled,
                    color: AppColor.lightGrey,
                    height: 40,
                    width: 165,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return const TrackingRow();
                },
                itemCount: 10,
              ),
            )
          ],
        ));
  }
}
