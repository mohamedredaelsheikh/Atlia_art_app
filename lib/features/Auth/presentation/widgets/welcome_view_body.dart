import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/utils/styles.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/continue_with_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: SvgPicture.asset(kHelloImage),
            ),
            Text(
              "Welcome.",
              style: Styles.textStyle25.copyWith(
                letterSpacing: 2.5,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2.5
                  ..color = kPrimaryColor,
                fontWeight: FontWeight.w800,
                height: 0.04,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "I hope you enjoy.",
              style: Styles.textStyle15.copyWith(
                color: kPrimaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kLoginView);
              },
              backgroundcolor: kPrimaryColor,
              borderRadius: BorderRadius.circular(15),
              text: "Log In",
              style: Styles.textStyle18.copyWith(
                color: kSacandaryColor,
              ),
              height: 43,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kRegisterView);
              },
              backgroundcolor: kPrimaryColor,
              borderRadius: BorderRadius.circular(16),
              text: "Sign Up",
              style: Styles.textStyle18.copyWith(
                color: kSacandaryColor,
              ),
              height: 43,
            ),
            const SizedBox(
              height: 70,
            ),
            ContinueWithAcount(
              ontap: () {},
              image: kGoogleLogo,
              text: "Countine with Google",
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            ContinueWithAcount(
              ontap: () {},
              image: kAppleLogo,
              text: "Countine with Apple",
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'New Account',
              textAlign: TextAlign.center,
              style: Styles.textStyle15.copyWith(
                color: const Color(0xFF5500FF),
              ),
            ),
            const SizedBox(
              height: 37,
            )
          ],
        ),
      ),
    );
  }
}
