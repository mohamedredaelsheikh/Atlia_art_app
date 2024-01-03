import 'package:atlia_art/core/utils/constants.dart';
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
            const Opacity(
              opacity: .75,
              child: Text(
                "Please enter 4 numbers code send to your email@gmail.com or phone number.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: kPrimaryColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomOtpNumberList(),
            const SizedBox(
              height: 15,
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
                    textcolor: kPrimaryColor,
                    fontsize: 18,
                    height: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kLoginView);
              },
              backgroundcolor: kPrimaryColor,
              textcolor: kSacandaryColor,
              borderRadius: BorderRadius.circular(16),
              text: "Confirm",
              fontsize: 20,
              height: 50,
            ),
            const SizedBox(
              height: 30,
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
                  style: const TextStyle(
                    color: Color(0xff7638F9),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
