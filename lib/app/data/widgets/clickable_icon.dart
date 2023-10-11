import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClickableIcon extends StatelessWidget {
  final String iconPath;
  final Color? color;
  final double? height;
  final EdgeInsets? padding;
  final VoidCallback? onPressed;
  const ClickableIcon({
    Key? key,
    required this.iconPath,
    this.onPressed,
    this.color,
    this.height,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: padding,
        color: Colors.transparent,
        child: SvgPicture.asset(
          iconPath,
          height: height,
          fit: BoxFit.scaleDown,
          colorFilter:
              color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        ),
      ),
    );
  }
}
