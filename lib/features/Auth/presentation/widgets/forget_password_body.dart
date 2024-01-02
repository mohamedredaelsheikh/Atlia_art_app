import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Forget Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = kPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                kLockImage,
                fit: BoxFit.cover,
              ),
            ),
            const Opacity(
              opacity: .85,
              child: Text(
                "Please enter your email address or phone number.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: kPrimaryColor),
                textAlign: TextAlign.center,
              ),
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
            const SizedBox(height: 10),
            CustomTextFormFiled(
              hintText: "E-mail or Phone number.",
              controller: TextEditingController(),
              type: TextInputType.text,
              validate: (value) {
                if (value!.isEmpty) {
                  return "please enter your E-mail or phone number.";
                }
                return null;
              },
              outlineInputBorderRadius: 24,
            ),
            const SizedBox(height: 35),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).push(kResetPassword);
              },
              backgroundcolor: kPrimaryColor,
              textcolor: kSacandaryColor,
              borderRadius: BorderRadius.circular(16),
              text: "Send",
              fontsize: 20,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
