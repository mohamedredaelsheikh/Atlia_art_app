import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/utils/styles.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/Custom_otp_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              kOtpImage,
              fit: BoxFit.cover,
            ),
            Text(
              "Please enter 4 numbers code send to your email@gmail.com or phone number.",
              style: Styles.textStyle15.copyWith(
                  color: kPrimaryColor,
                  height: 1.5,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 48,
            ),
            const CustomOtpNumberList(),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.7,
                  child: CustomButton(
                    onPressed: () {},
                    backgroundcolor: kThairdColor,
                    text: "Resend Code",
                    style: Styles.textStyle15.copyWith(
                      color: kPrimaryColor,
                    ),
                    height: 43,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kLoginView);
              },
              backgroundcolor: kPrimaryColor,
              borderRadius: BorderRadius.circular(16),
              text: "Confirm",
              style: Styles.textStyle18.copyWith(
                color: kSacandaryColor,
                fontWeight: FontWeight.w600,
              ),
              height: 43,
            ),
            const SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPressed: () {
                    GoRouter.of(context).pop(kForgetPasswordView);
                  },
                  backgroundcolor: kThairdColor,
                  text: "Change email & phone number",
                  style: Styles.textStyle15.copyWith(
                    color: const Color(0xFF5500FF),
                    decoration: TextDecoration.underline,
                  ),
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
