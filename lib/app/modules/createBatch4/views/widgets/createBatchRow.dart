import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';

class IDList extends StatelessWidget {
  const IDList(
      {super.key,
      required this.id,
      required this.selectedValue,
      required this.onChange});
  final String id, selectedValue;
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
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
              ),
              const SizedBox(
                width: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 220,
                    child: Text(
                      id ?? '1094241',
                      style: CustomTextStyle.font16RM,
                    ),
                  ),
                  Radio(
                      value: id,
                      groupValue: selectedValue,
                      activeColor: AppColor.primaryColor,
                      onChanged: (value) {
                        onChange(value!);
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
