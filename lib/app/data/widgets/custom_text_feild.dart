import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.node,
      this.enabled,
      this.errorText,
      this.autoFocus,
      this.prefixIcon,
      this.onChangeFtn,
      this.initialValue,
      this.validatorFtn,
      required this.name,
      required this.hint,
      this.isPass = false,
      this.textCapitalization = TextCapitalization.none,
      this.isSuffixIcon = false,
      required this.textInputType,
      this.width = double.infinity,
      this.textInputAction = TextInputAction.done,
      this.readOnly,
      this.onTap,
      this.maxLines,
      this.textcontoller,
      this.onSubmitFtn,
      this.helperText,
      this.helperStyle,
      this.maxLenght,
      this.suffixIcon,
      this.show = false,
      this.onTapEye,
      this.borderRadius});
  final String name;
  final int? maxLines, maxLenght;
  final TextEditingController? textcontoller;
  final String? hint, helperText, errorText, initialValue;
  final TextStyle? helperStyle;
  final bool? isPass, show, readOnly, enabled, autoFocus, isSuffixIcon;
  final double? width, borderRadius;
  final FocusNode? node;
  final Widget? prefixIcon, suffixIcon;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTap, onTapEye;

  final String? Function(String?)? validatorFtn;
  final String? Function(String?)? onChangeFtn;
  final String? Function(String?)? onSubmitFtn;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      maxLength: maxLenght,
      cursorColor: Colors.black,
      style: const TextStyle(fontSize: 18),
      autocorrect: false,
      controller: textcontoller,
      onTap: onTap,
      textCapitalization: textCapitalization,
      enabled: enabled ?? true,
      initialValue: initialValue,
      name: name,
      autofocus: autoFocus ?? false,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      focusNode: node,
      readOnly: readOnly ?? false,
      obscureText: show ?? false,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        fillColor: const Color(0xffF2F2F2),
        filled: true,
        helperMaxLines: 2,
        helperStyle: helperStyle,
        helperText: helperText,
        errorText: errorText,
        prefixIcon: prefixIcon,
        suffixIcon: isPass!
            ? IconButton(
                splashRadius: 8,
                onPressed: onTapEye,
                icon: Icon(
                  show! ? Icons.visibility_off : Icons.visibility,
                  size: 20,
                  color: AppColor.secondaryColor,
                ),
              )
            : suffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 5).copyWith(top: 20),
        hintText: hint,
        hintStyle: CustomTextStyle.font16R.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w300,
            color: AppColor.hintTextColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          borderSide: BorderSide.none,
        ),
      ),
      validator: validatorFtn,
      onChanged: onChangeFtn,
      onSubmitted: onSubmitFtn,
    );
  }
}
