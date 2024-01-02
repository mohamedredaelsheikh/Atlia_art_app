import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/custom_text_form_field.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/sign_in_with_icons.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Create Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1.5
                  ..color = kPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Opacity(
              opacity: .80,
              child: Text(
                "Please Enter this data",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Opacity(
              opacity: .75,
              child: Text(
                "Name",
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
              hintText: "Enter your user name.",
              controller: TextEditingController(),
              validate: (value) {
                if (value!.isEmpty) {
                  return "please Enter Your name.";
                }
                return null;
              },
              type: TextInputType.name,
            ),
            const SizedBox(
              height: 15,
            ),
            Opacity(
              opacity: .75,
              child: Text(
                "Phone",
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
              hintText: "Enter your phone.",
              controller: TextEditingController(),
              type: TextInputType.phone,
              validate: (value) {
                if (value!.isEmpty) {
                  return "please enter your phone number.";
                }
                return null;
              },
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
            ),
            const SizedBox(
              height: 25,
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
              height: 10,
            ),
            Container(
              color: kThairdColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      kAppleLogo,
                      height: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      kGoogleLogo,
                      height: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SignInWithIcons()
          ],
        ),
      ),
    );
  }
}
