import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/features/splash/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            child: Image.asset("assets/images/splash.png")),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.2,
          child: CustomButton(
              onPressed: () {},
              height: 45,
              width: 240,
              backgroundcolor: kSacandaryColor,
              textcolor: kPrimaryColor,
              text: "Get Started"),
        )
      ],
    );
  }
}
