import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final double? radius, borderWidth;
  final Color? borderColor, backgoundColor;
  final bool isborder;
  final Widget? child;
  final VoidCallback? onPressed;
  const CustomAvatar(
      {super.key,
      this.radius,
      this.borderColor,
      this.isborder = true,
      this.child,
      this.backgoundColor,
      this.onPressed,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: (radius ?? 23) * 2,
        width: (radius ?? 23) * 2,
        decoration: BoxDecoration(
          color: backgoundColor ?? Colors.white,
          shape: BoxShape.circle,
          border: isborder
              ? Border.all(
                  width: borderWidth ?? 2,
                  color: borderColor ?? AppColor.dividerColor,
                )
              : null,
        ),
        child: child,
      ),
    );
  }
}
