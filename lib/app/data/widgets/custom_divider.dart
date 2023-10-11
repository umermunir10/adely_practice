import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double? thickness, padding;
  const CustomDivider({super.key, this.thickness, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: padding ?? 8),
      height: thickness ?? 5,
      decoration: BoxDecoration(
          color: AppColor.dividerColor,
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
