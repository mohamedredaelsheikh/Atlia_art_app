import 'package:atlia_art/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundcolor,
    this.textcolor,
    this.borderRadius,
    required this.text,
    this.fontsize,
    this.onPressed,
    this.width,
    required this.height,
    this.style,
  });
  final TextStyle? style;
  final double? width;
  final double height;
  final Color backgroundcolor;
  final Color? textcolor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
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
        child: Text(
          text,
          style: style ??
              Styles.textStyle25.copyWith(
                color: textcolor,
                fontWeight: FontWeight.w900,
                fontSize: fontsize,
              ),
        ),
      ),
    );
  }
}
