import 'package:atlia_art/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.image});
  final String? title, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.arrow_back,
            size: 28,
          ),
          Text(
            title!,
            style: Styles.textStyle25,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: CircleAvatar(
              child: Image.asset(image!),
            ),
          )
        ],
      ),
    );
  }
}
