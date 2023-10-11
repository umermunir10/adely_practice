
import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';

enum ButtonVariant {
  filled,
  bordered,
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.buttonName,
      this.height,
      this.width,
      this.type,
      this.onPressed,
      this.color,
      this.borderRadius,
      this.textColor,
      this.isbold = false,
      this.elevation = 0,
      this.backgroundColor,
      this.borderWidth,
      this.icon})
      : isFilled = type == ButtonVariant.filled,
        super(key: key);

  final ButtonVariant? type;
  final VoidCallback? onPressed;
  final Color? color, textColor, backgroundColor;
  final String buttonName;
  final double elevation;
  final double? height, width, borderRadius, borderWidth;
  final bool isFilled, isbold;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 40,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            color: isFilled
                ? color ?? AppColor.secondaryColor
                : backgroundColor ?? AppColor.primaryColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            border: Border.all(
              width: isFilled ? 0 : borderWidth ?? 2,
              color: color ?? AppColor.secondaryColor,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: (1 * elevation),
                  blurRadius: (3 * elevation))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (icon != null) icon!,
            Text(
              buttonName,
              textAlign: TextAlign.center,
              style: CustomTextStyle.font14R.copyWith(
                fontWeight: isbold ? FontWeight.bold : FontWeight.w500,
                color: isFilled
                    ? textColor ?? AppColor.primaryColor
                    : color ?? AppColor.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
