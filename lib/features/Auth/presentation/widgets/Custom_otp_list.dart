import 'package:atlia_art/features/Auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomOtpNumberList extends StatelessWidget {
  const CustomOtpNumberList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) => Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: CustomTextFormFiled(
                validate: (value) {
                  if (value!.isEmpty) {
                    return "please enter the code";
                  }
                  return null;
                },
                outlineInputBorderRadius: 10,
                borderRadius: BorderRadius.circular(10),
                type: TextInputType.number,
                controller: TextEditingController(),
              )),
        ),
      ),
    );
  }
}
