import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/utils/styles.dart';
import 'package:atlia_art/core/widgets/custom_button.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/custom_text_form_field.dart';
import 'package:atlia_art/features/Auth/presentation/widgets/sign_in_with_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Create Account",
                style: Styles.textStyle25.copyWith(
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 9,
              ),
              const Text(
                "Please Enter this data",
                style: Styles.textStyle15,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                "Name",
                style: Styles.textStyle18.copyWith(color: kPrimaryColor),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormFiled(
                hintText: "Enter your user name.",
                controller: nameController,
                prefix: Icons.person,
                validate: (value) {
                  if (value!.isEmpty) {
                    return "please Enter Your name.";
                  }
                  return null;
                },
                outlineInputBorderRadius: 24,
                type: TextInputType.name,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Phone",
                style: Styles.textStyle18.copyWith(color: kPrimaryColor),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormFiled(
                hintText: "Enter your phone.",
                controller: phoneController,
                type: TextInputType.phone,
                prefix: Icons.phone,
                validate: (value) {
                  if (value!.isEmpty) {
                    return "please enter your phone number.";
                  }
                  return null;
                },
                outlineInputBorderRadius: 24,
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
              const SizedBox(
                height: 25,
              ),
              CustomTextFormFiled(
                hintText: "Enter your E-mail.",
                controller: emailController,
                type: TextInputType.emailAddress,
                prefix: Icons.email,
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
                controller: passwordController,
                prefix: Icons.password,
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
                height: 35,
              ),
              CustomButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    GoRouter.of(context).push(kHomeView);
                  }
                },
                style: Styles.textStyle18.copyWith(
                  color: kSacandaryColor,
                ),
                backgroundcolor: kPrimaryColor,
                borderRadius: BorderRadius.circular(15),
                text: "Sign Up",
                height: 43,
              ),
              const SizedBox(
                height: 45,
              ),
              const CustomSignInWithIcons(),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I have an account.",
                    style: Styles.textStyle15.copyWith(
                      color: kPrimaryColor,
                    ),
                  ),
                  CustomButton(
                    onPressed: () {
                      GoRouter.of(context).push(kLoginView);
                    },
                    backgroundcolor: kThairdColor,
                    style: Styles.textStyle15.copyWith(
                      color: kSacandaryColor,
                    ),
                    text: "Sign In",
                    height: 43,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
