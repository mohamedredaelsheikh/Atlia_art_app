import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/custom_text_form_field.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/sign_in_with_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Log In",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1.5
                  ..color = kPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const Opacity(
              opacity: .80,
              child: Text(
                "Please Enter your email",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Opacity(
              opacity: .75,
              child: Text(
                "E-mail",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1.5
                      ..color = kPrimaryColor,
                    letterSpacing: 1.5),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormFiled(
              hintText: "Enter your E-mail.",
              controller: TextEditingController(),
              type: TextInputType.emailAddress,
              validate: (value) {
                if (value!.isEmpty) {
                  return "please enter your E-mail.";
                }
                return null;
              },
              outlineInputBorderRadius: 24,
            ),
            const SizedBox(
              height: 15,
            ),
            Opacity(
              opacity: .75,
              child: Text(
                "Passward",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1.5
                      ..color = kPrimaryColor,
                    letterSpacing: 1.5),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormFiled(
              hintText: "Enter your passward.",
              controller: TextEditingController(),
              isPassword: true,
              type: TextInputType.visiblePassword,
              validate: (value) {
                if (value!.isEmpty) {
                  return "please enter your passward.";
                }
                return null;
              },
              outlineInputBorderRadius: 24,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  onPressed: () {
                    GoRouter.of(context).push(kForgetPasswordView);
                  },
                  backgroundcolor: kThairdColor,
                  text: "Forget Password?",
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
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kHomeView);
              },
              backgroundcolor: kPrimaryColor,
              textcolor: kSacandaryColor,
              borderRadius: BorderRadius.circular(16),
              text: "Log In",
              fontsize: 20,
              height: 50,
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomSignInWithIcons(),
          ],
        ),
      ),
    );
  }
}
