import 'package:atlia_art/features/Auth/presentation/widgets/welcome_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
      ),
      body: Transform.translate(
        offset: const Offset(0, -55),
        child: const WelcomeViewBody(),
      ),
    );
  }
}
