import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundcolor,
    this.borderRadius,
    required this.text,
    this.onPressed,
    this.width,
    this.height,
    this.style,
  });
  final String text;
  final TextStyle? style;
  final double? width;
  final double? height;
  final Color backgroundcolor;

  final BorderRadius? borderRadius;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 52,
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(text, style: style),
      ),
    );
  }
}
