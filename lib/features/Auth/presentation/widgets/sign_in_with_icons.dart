import 'package:atlia_art/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomSignInWithIcons extends StatelessWidget {
  const CustomSignInWithIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kThairdColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              kAppleLogo,
              height: 45,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              kGoogleLogo,
              height: 45,
            ),
          ),
        ],
      ),
    );
  }
}
