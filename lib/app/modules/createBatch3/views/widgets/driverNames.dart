import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/modules/createBatch3/controllers/create_batch3_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class driverList extends GetView<CreateBatch3Controller> {
  const driverList({
    required this.onChange,
    super.key,
    this.name,
    this.selectedValue,
  });
  final String? name, selectedValue;
  final ValueChanged<String> onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        height: 70,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
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
              SizedBox(
                width: 225,
                child: Text(
                  name ?? 'Amir Mehmood',
                  style: CustomTextStyle.font16RM,
                ),
              ),
              Radio(
                  value: name,
                  groupValue: selectedValue,
                  activeColor: AppColor.primaryColor,
                  onChanged: (value) {
                    onChange(value!);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
