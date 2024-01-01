import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidingAnimationButton extends StatelessWidget {
  const SlidingAnimationButton({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kWelcomeView);
              },
              height: 45,
              width: 240,
              backgroundcolor: kSacandaryColor,
              textcolor: kPrimaryColor,
              text: "Get Started"),
        );
      },
    );
  }
}
