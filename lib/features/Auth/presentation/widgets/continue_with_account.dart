import 'package:atlia_art/core/utils/constants.dart';
import 'package:flutter/material.dart';

class ContinueWithAcount extends StatelessWidget {
  const ContinueWithAcount(
      {super.key, required this.text, required this.image, this.ontap});
  final String text, image;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 26,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
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
