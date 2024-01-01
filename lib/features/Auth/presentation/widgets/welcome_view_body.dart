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
              child: SvgPicture.asset("assets/images/Hello-cuate.svg"),
            ),
            Text(
              "Welcome.",
              style: Styles.textStyle25.copyWith(
                letterSpacing: 3,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = kPrimaryColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Opacity(
              opacity: .7,
              child: Text(
                "I hope you enjoy.",
                style: Styles.textStyle16.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {},
              backgroundcolor: kPrimaryColor,
              textcolor: kSacandaryColor,
              borderRadius: BorderRadius.circular(16),
              text: "Log In",
              fontsize: 20,
              height: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              onPressed: () {},
              backgroundcolor: kPrimaryColor,
              textcolor: kSacandaryColor,
              borderRadius: BorderRadius.circular(16),
              text: "Sign Up",
              fontsize: 20,
              height: 50,
            ),
            const SizedBox(
              height: 40,
            ),
            ContinueWithAcount(
              ontap: () {},
              image: kGoogleLogo,
              text: "Countine with Google",
            ),
            const SizedBox(
              height: 10,
            ),
            ContinueWithAcount(
              ontap: () {},
              image: kAppleLogo,
              text: "Countine with Apple",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kRegisterView);
              },
              backgroundcolor: kThairdColor,
              textcolor: const Color(0xff7638F9),
              text: "New Acount",
              fontsize: 18,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
