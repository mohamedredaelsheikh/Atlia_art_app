import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/utils/styles.dart';
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
              height: 51,
              width: 281,
              borderRadius: BorderRadius.circular(15),
              backgroundcolor: kSacandaryColor,
              style: Styles.textStyle20.copyWith(
                color: kPrimaryColor,
              ),
              text: "Get Started"),
        );
      },
    );
  }
}
