import 'package:atlia_art/core/utils/app_router.dart';
import 'package:atlia_art/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AtlieArtApp());
}

class AtlieArtApp extends StatelessWidget {
  const AtlieArtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kThairdColor,
        textTheme: GoogleFonts.interTextTheme(),
      ),
    );
  }
}
