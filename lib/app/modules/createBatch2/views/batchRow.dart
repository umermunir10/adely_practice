import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/modules/createBatch2/controllers/create_batch2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class batchRow extends GetView<CreateBatch2Controller> {
  const batchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(8),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 15,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.amber,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Apple Watch Ultra',
                  style: CustomTextStyle.font16RB,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Package ID #: 1703620657009',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 40,
                  width: 222,
                  child: Text(
                      'Location: 1R Building, Mini Market, Gullberg II, Lahore.',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ),
              ],
            ),
            // const SizedBox(
            //   width: ,
            // ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Obx(
                  () => Checkbox(
                      value: controller.isDone.value,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        controller.isDone.toggle();
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
