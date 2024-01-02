import 'package:atlia_art/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validate;
  final void Function(String)? onChanged;
  final TextInputType? type;
  final String? hintText;
  final IconData? prefix;
  final bool? isPassword;
  final BorderRadiusGeometry? borderRadius;
  final double outlineInputBorderRadius;

  const CustomTextFormFiled({
    super.key,
    required this.controller,
    required this.validate,
    this.type,
    this.hintText,
    this.prefix,
    this.isPassword = false,
    this.onChanged,
    this.borderRadius,
    this.outlineInputBorderRadius = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius ?? BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 7,
              spreadRadius: 5,
              offset: const Offset(0, 5)),
        ],
      ),
      child: TextFormField(
        scrollPadding: EdgeInsets.zero,
        maxLines: 1,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword!,
        validator: validate,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: kPrimaryColor,
          ),
          prefixIcon: Icon(prefix),
          border: outlineInputBorder(
            color: Colors.white,
            raduis: outlineInputBorderRadius,
          ),
          enabledBorder: outlineInputBorder(
            color: Colors.white,
            raduis: outlineInputBorderRadius,
          ),
          focusedBorder: outlineInputBorder(
            color: kPrimaryColor,
            raduis: outlineInputBorderRadius,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder(
      {required color, required double raduis}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(raduis)),
      borderSide: BorderSide(
        color: color!,
      ),
    );
  }
}
