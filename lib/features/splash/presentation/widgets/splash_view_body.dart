import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/features/splash/presentation/widgets/sliding_button_animation.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            kSplashImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.2,
          child: SlidingAnimationButton(slidingAnimation: slidingAnimation),
        )
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation = Tween(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }
}
