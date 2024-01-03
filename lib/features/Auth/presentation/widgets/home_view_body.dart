import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          image: kMyImage,
          title: "Search Art",
        ),
      ],
    );
  }
}
