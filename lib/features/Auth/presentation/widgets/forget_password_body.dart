import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/utils/styles.dart';
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
              style: Styles.textStyle25.copyWith(
                fontWeight: FontWeight.w700,
                color: kPrimaryColor,
                height: 0.04,
                letterSpacing: 1.25,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                kLockImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Please enter your email address or phone number.",
              style: Styles.textStyle18.copyWith(
                height: 1.5,
                fontWeight: FontWeight.w700,
                color: kPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "E-mail",
              style: Styles.textStyle18.copyWith(
                color: kPrimaryColor,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 25),
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
              borderRadius: BorderRadius.circular(15),
              text: "Send",
              style: Styles.textStyle18.copyWith(
                color: kSacandaryColor,
              ),
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
