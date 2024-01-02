import 'package:atlia_art/core/utils/constants.dart';
import 'package:flutter/material.dart';

class ContinueWithAcount extends StatelessWidget {
  const ContinueWithAcount({
    super.key,
    this.text,
    required this.image,
    this.ontap,
    required this.color,
  });
  final String? text;
  final String image;
  final Color color;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text ?? '',
              style: TextStyle(
                fontSize: 16,
                // color: kPrimaryColor,
                fontWeight: FontWeight.w900,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
