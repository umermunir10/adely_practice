
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final void Function()? onPressed;
  final String name;
  final bool underline;
  final TextStyle? style;

  const ClickableText(
      {Key? key,
      this.onPressed,
      required this.name,
      this.underline = false,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        name,
        style: style ??
            CustomTextStyle.font14R.copyWith(
                decoration: underline ? TextDecoration.underline : null),
      ),
    );
  }
}
