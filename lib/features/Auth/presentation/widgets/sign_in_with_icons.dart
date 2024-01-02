import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignInWithIcons extends StatelessWidget {
  const SignInWithIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Opacity(
          opacity: .75,
          child: Text(
            "I have an account.",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: kPrimaryColor,
            ),
          ),
        ),
        CustomButton(
          onPressed: () {},
          fontsize: 18,
          backgroundcolor: kThairdColor,
          textcolor: kSacandaryColor,
          text: "Sign In",
          height: 50,
        ),
      ],
    );
  }
}
