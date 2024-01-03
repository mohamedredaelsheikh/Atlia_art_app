import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/utils/styles.dart';
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
              style: Styles.textStyle30.copyWith(
                color: kPrimaryColor,
                height: 0.03,
                letterSpacing: 1.50,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Please Enter your email.",
              style: Styles.textStyle15.copyWith(
                color: kPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 90,
            ),
            Text(
              "E-mail",
              style: Styles.textStyle18.copyWith(
                color: kPrimaryColor,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 25,
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
              height: 30,
            ),
            Text(
              "Passward",
              style: Styles.textStyle18.copyWith(
                color: kPrimaryColor,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 25,
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
                  style: Styles.textStyle15.copyWith(
                    color: const Color(0xFF5500FF),
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.underline,
                  ),
                  height: 43,
                ),
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kHomeView);
              },
              backgroundcolor: kPrimaryColor,
              borderRadius: BorderRadius.circular(15),
              style: Styles.textStyle18.copyWith(
                color: kSacandaryColor,
              ),
              text: "Log In",
              height: 43,
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
